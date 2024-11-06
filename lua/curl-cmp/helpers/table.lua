local function print_table(t)
  for key, value in pairs(t) do
    if type(value) == 'table' then
      -- If the value is a table, recursively call print_table
      print(key .. ':')
      print_table(value)
    else
      print(key .. ': ' .. tostring(value))
    end
  end
end

local function concat_tables(...)
  local result = {}
  local current_index = 1

  for _, tbl in ipairs({ ... }) do
    table.move(tbl, 1, #tbl, current_index, result)
    current_index = current_index + #tbl
  end

  return result
end

local function parse_completions_items(items, completion_item)
  local parsed = {}
  for _, item in pairs(items) do
    table.insert(parsed, completion_item(item.label, item.doc))
  end
  return parsed
end

return {
  concat_tables = concat_tables,
  print_table = print_table,
  parse_completions_items = parse_completions_items,
}
