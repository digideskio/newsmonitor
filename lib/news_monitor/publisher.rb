module NewsMonitor
  class Publisher < NibblerJSON
    element :id
    element :permalink
    element :name
    element :published_at, with: -> (time) { Time.parse time }
    element :thumbnail
    element :thumbnail_url
    element :url
    element :author
  end
end
