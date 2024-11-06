local function completion_item(label, documentation)
  return {
    label = label,
    documentation = label .. ' ' .. documentation,
    insertText = '--header "content-type: ' .. label .. '"',
    cmp = { kind_text = 'ContentType', kind_hl_group = '' },
    insertTextFormat = 1,
  }
end

local content_types = {
  { label = 'application/json', doc = 'Used for sending JSON data.' },
  {
    label = 'application/x-www-form-urlencoded',
    doc = 'Standard encoding for form data, typically used for web forms. Data is encoded as key-value pairs.',
  },
  {
    label = 'multipart/form-data',
    doc = 'Used for uploading files in forms. The body is split into parts, each containing a part of the form data, including files.',
  },
  { label = 'application/xml', doc = 'Used for XML data.' },
  { label = 'text/plain', doc = 'Used for plain text data.' },
  { label = 'text/html', doc = 'Used for HTML data.' },
  {
    label = 'application/octet-stream',
    doc = "Used for binary data or files that don't fit any of the other types.",
  },
  {
    label = 'application/javascript',
    doc = 'Used for JavaScript code (i.e., a JavaScript file).',
  },
  { label = 'application/pdf', doc = 'Used for PDF files.' },
  { label = 'image/jpeg', doc = 'Used for JPEG image files.' },
  { label = 'image/png', doc = 'Used for PNG image files.' },
  { label = 'audio/mpeg', doc = 'Used for MP3 audio files.' },
  { label = 'video/mp4', doc = 'Used for MP4 video files.' },
  { label = 'application/ld+json', doc = 'Used for JSON-LD (JSON for Linked Data).' },
  { label = 'application/zip', doc = 'Used for ZIP archive files.' },
  { label = 'application/gzip', doc = 'Used for GZIP compressed data.' },
  { label = 'application/x-tar', doc = 'Used for TAR archive files.' },
  { label = 'application/x-bzip2', doc = 'Used for BZIP2 compressed data.' },
  { label = 'application/x-7z-compressed', doc = 'Used for 7z compressed files.' },
  { label = 'application/vnd.ms-excel', doc = 'Used for Microsoft Excel files (`.xls`).' },
  {
    label = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    doc = 'Used for modern Excel files (`.xlsx`).',
  },
  {
    label = 'application/vnd.ms-powerpoint',
    doc = 'Used for Microsoft PowerPoint files (`.ppt`).',
  },
  {
    label = 'application/vnd.openxmlformats-officedocument.presentationml.presentation',
    doc = 'Used for modern PowerPoint files (`.pptx`).',
  },
  { label = 'application/vnd.ms-word', doc = 'Used for Microsoft Word files (`.doc`).' },
  {
    label = 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
    doc = 'Used for modern Word files (`.docx`).',
  },
  {
    label = 'application/json-patch+json',
    doc = 'Used for JSON Patch format, which is a format for describing changes to a JSON document.',
  },
  {
    label = 'application/merge-patch+json',
    doc = 'Used for JSON Merge Patch format, which is another way to modify a JSON document.',
  },
  {
    label = 'application/vnd.api+json',
    doc = 'Used for JSON API, a standard for building APIs in JSON.',
  },
  {
    label = 'application/problem+json',
    doc = 'Used for conveying detailed information about HTTP error responses.',
  },
  { label = 'application/x-font-ttf', doc = 'Used for TrueType font files.' },
  { label = 'application/x-shockwave-flash', doc = 'Used for Flash media files (`.swf`).' },
  {
    label = 'application/font-woff',
    doc = 'Used for WOFF (Web Open Font Format) font files.',
  },
  { label = 'application/font-woff2', doc = 'Used for WOFF2 font files.' },
  { label = 'text/css', doc = 'Used for CSS (Cascading Style Sheets) files.' },
  {
    label = 'text/javascript',
    doc = 'Used for JavaScript files, though `application/javascript` is more commonly used nowadays.',
  },
  { label = 'text/xml', doc = 'Used for XML data in plain text.' },
  { label = 'text/csv', doc = 'Used for CSV (Comma Separated Values) data.' },
  { label = 'text/tab-separated-values', doc = 'Used for TSV (Tab Separated Values) data.' },
  { label = 'text/markdown', doc = 'Used for Markdown-formatted text.' },
  { label = 'application/x-httpd-php', doc = 'Used for PHP files.' },
  { label = 'application/x-sqlite3', doc = 'Used for SQLite 3 database files.' },
  { label = 'application/x-java-archive', doc = 'Used for Java archive (JAR) files.' },
  {
    label = 'application/x-dvi',
    doc = 'Used for DVI (DeVice Independent) files, typically used by TeX and LaTeX.',
  },
  { label = 'application/x-latex', doc = 'Used for LaTeX files.' },
}

return require('curl-cmp.helpers.table').parse_completions_items(content_types, completion_item)
