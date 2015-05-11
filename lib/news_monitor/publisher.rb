module NewsMonitor
  class Publisher < NibblerJSON
    element :id
    element :permalink
    element :name
    element :published_at, with: -> (datetime) { Time.parse datetime }
    element :thumbnail
    element :thumbnail_url
    element :url
    element :author
  end
end
