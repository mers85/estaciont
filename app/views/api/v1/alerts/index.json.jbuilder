json.array! @alerts do |alert|
  json.partial! 'alert', alert: alert
end
