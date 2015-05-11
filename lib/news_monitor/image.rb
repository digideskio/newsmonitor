module NewsMonitor
  class Image < NibblerJSON
    element :url
    element '.full_url.original' => :full_original_url
    element '.full_url.300x' => :full_300x_url
    element :width
    element :height
  end
end
