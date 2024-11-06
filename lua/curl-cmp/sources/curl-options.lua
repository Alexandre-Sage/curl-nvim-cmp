local function completion_item(label, documentation)
  return {
    label = label,
    documentation = label .. ' ' .. documentation,
    insertText = label .. ' ${1:value}',
    cmp = { kind_text = 'CurlOption', kind_hl_group = '' },
    insertTextFormat = 2,
  }
end

local function split_curl_option(input_string)
  local short, long, doc = input_string:match('([%-a-zA-Z0-9]+)%s*,%s*(%-%-[a-zA-Z0-9%-]+)%s*(.*)')
  if not short then
    short = nil
    long, doc = input_string:match('%s*(%-%-[a-zA-Z0-9%-]+)%s*(.*)')
  end

  return short, long, doc
end

local function get_curl_otpions()
  local handle = io.popen('curl --help all')
  local result = handle:read('*a')
  handle:close()
  return result
end

local function parse_curl_options(curl_options)
  local parsed_options = {}
  for option in curl_options:gmatch('[^\r\n]+') do
    local short, long, doc = split_curl_option(option)
    if not short then
      table.insert(parsed_options, completion_item(long, doc))
    else
      table.insert(parsed_options, completion_item(long, doc))
      table.insert(parsed_options, completion_item(short, doc))
    end
  end
  return parsed_options
end

local raw = get_curl_otpions()

return parse_curl_options(raw)
