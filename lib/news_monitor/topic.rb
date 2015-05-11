module NewsMonitor
  class Topic < NibblerJSON
    element :id
    element :name
    element :label
    element :score
  end
end
