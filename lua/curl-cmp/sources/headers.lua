local function completion_item(label, documentation)
  return {
    label = label,
    documentation = label .. ' ' .. documentation,
    insertText = '--header ' .. '"' .. label .. ': ${1:header_value}"',
    cmp = { kind_text = 'Header', kind_hl_group = '' },
    insertTextFormat = 2,
  }
end
local headers = {
  {
    label = 'content-type',
    doc = 'Specifies the media type of the resource or the data being sent.',
  },
  {
    label = 'accept',
    doc = 'Specifies the media types that the client is willing to receive from the server.',
  },
  { label = 'authorization', doc = 'Sends credentials to authenticate with the server.' },
  {
    label = 'user-agent',
    doc = 'Identifies the client making the request (usually a browser or script).',
  },
  {
    label = 'accept-encoding',
    doc = 'Specifies which content encodings the client supports (gzip, deflate, etc.).',
  },
  {
    label = 'connection',
    doc = 'Controls whether the connection to the server should be kept open or closed.',
  },
  {
    label = 'cookie',
    doc = 'Sends cookies to the server. Multiple cookies can be separated by semicolons.',
  },
  {
    label = 'x-requested-with',
    doc = 'Typically used by JavaScript frameworks to identify AJAX requests.',
  },
  {
    label = 'referer',
    doc = 'Specifies the address of the previous web page from which a link to the currently requested page was followed.',
  },
  { label = 'content-length', doc = 'Indicates the size of the body in the request.' },
  { label = 'cache-control', doc = 'Directs caching behavior for both the client and server.' },
  {
    label = 'host',
    doc = 'Specifies the domain name of the server (useful when making requests to servers with multiple virtual hosts).',
  },
  {
    label = 'if-none-match',
    doc = 'Used with conditional requests to tell the server to return data only if it does not match a specified entity tag (ETag).',
  },
  {
    label = 'if-modified-since',
    doc = 'Used with conditional GET requests to tell the server to return data only if it has been modified since the specified date.',
  },
  { label = 'accept-language', doc = 'Specifies the preferred languages for the response.' },
  { label = 'origin', doc = 'Used in CORS requests to indicate the origin of the request.' },
  {
    label = 'x-frame-options',
    doc = 'Controls whether the browser should display the content in a <frame>, <iframe>, <object>, <embed>, or <applet> tag.',
  },
  {
    label = 'x-content-type-options',
    doc = 'Prevents the browser from interpreting files as a different MIME type.',
  },
  { label = 'te', doc = 'Indicates the transfer encodings the client is willing to accept.' },
  {
    label = 'upgrade-insecure-requests',
    doc = 'Tells the server to prefer an encrypted (HTTPS) connection.',
  },
  {
    label = 'authorization: digest',
    doc = 'For digest authentication (less common but still supported).',
  },
  {
    label = 'x-forwarded-for',
    doc = 'Used to forward the original IP address of a client when the request passes through a proxy or load balancer.',
  },
}

return require('curl-cmp.helpers.table').parse_completions_items(headers, completion_item)
