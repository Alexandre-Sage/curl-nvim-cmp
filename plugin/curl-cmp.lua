require('cmp').register_source('curl', require('curl-cmp'))
require('cmp').setup.filetype({ 'curl' }, {
  sources = {
    { name = 'curl' },
  },
})
