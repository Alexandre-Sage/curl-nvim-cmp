local function completion_item(label, documentation)
  return {
    label = label,
    documentation = label .. ' ' .. documentation,
    insertText = 'curl -X ' .. label .. ' ${1:url}',
    cmp = { kind_text = 'Method', kind_hl_group = '' },
    insertTextFormat = 2,
  }
end
local methods = {
  {
    label = 'GET',
    doc = 'Used to request data from a specified resource. The data is returned in the response body.',
  },
  {
    label = 'POST',
    doc = 'Used to send data to the server (usually form data or JSON). Often used for submitting forms, creating resources, or triggering an action.',
  },
  {
    label = 'PUT',
    doc = 'Used to update an existing resource or create a new resource at a specified URI.',
  },
  { label = 'DELETE', doc = 'Used to delete a resource at a specified URI.' },
  {
    label = 'HEAD',
    doc = 'Similar to GET, but only retrieves the headers and not the body of the response.',
  },
  {
    label = 'PATCH',
    doc = 'Used to apply partial modifications to a resource. Unlike PUT, which replaces the entire resource, PATCH only modifies the specified parts.',
  },
  {
    label = 'OPTIONS',
    doc = 'Used to describe the communication options for the target resource. This label is often used to check the allowed HTTP methods and headers for a resource or server.',
  },
  {
    label = 'TRACE',
    doc = 'Used for diagnostic purposes to echo back the received request. This is typically used for debugging and testing purposes.',
  },
  {
    label = 'CONNECT',
    doc = 'Used to establish a tunnel to a remote host (typically used with proxy servers). It is rarely used directly with curl but can be specified for testing certain proxy behaviors.',
  },
  {
    label = 'COPY',
    doc = 'Copies a resource from one URI to another. This is not a widely implemented label and is less commonly used.',
  },
  {
    label = 'LINK',
    doc = 'Establishes a relationship between two resources. Not commonly used and has limited server support.',
  },
  {
    label = 'UNLINK',
    doc = 'Removes a link between two resources. It is the inverse of the LINK label and has limited support.',
  },
  {
    label = 'PURGE',
    doc = 'Used to clear the cache for a specific resource, especially in caching proxies. Not commonly used outside of caching servers.',
  },
  {
    label = 'LOCK',
    doc = 'Used to lock a resource to prevent other operations (like updates) from occurring on it. This is specific to some WebDAV servers.',
  },
  {
    label = 'UNLOCK',
    doc = 'Releases a lock on a resource. Like LOCK, it is specific to some WebDAV servers.',
  },
}
return require('curl-cmp.helpers.table').parse_completions_items(methods, completion_item)
