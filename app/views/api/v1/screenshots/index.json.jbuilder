json.array! @screenshots do |screenshot|
  json.partial! 'screenshot', screenshot: screenshot
end
