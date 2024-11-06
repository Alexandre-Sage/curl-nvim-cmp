local curl_sources = require('curl-cmp.sources')

local source = {}

function source:is_available()
  return true
end

function source:get_debug_name()
  return 'debug name'
end

function source:get_position_encoding_kind()
  return 'utf-16'
end

function source:get_keyword_pattern()
  return [[\k\+]]
end

function source:get_trigger_characters()
  return { '.' }
end

function source:complete(params, callback)
  callback(curl_sources)
end

function source:resolve(completion_item, callback)
  callback(completion_item)
end

function source:execute(completion_item, callback)
  callback(completion_item)
end

return source
-- require('helpers.table').print_table(require('sources.init'))
