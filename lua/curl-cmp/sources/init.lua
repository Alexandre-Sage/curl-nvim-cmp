local methods = require('curl-cmp.sources.methods')
local content_types = require('curl-cmp.sources.content-types')
local options = require('curl-cmp.sources.curl-options')
local headers = require('curl-cmp.sources.headers')

return require('curl-cmp.helpers.table').concat_tables(methods, content_types, options, headers)
