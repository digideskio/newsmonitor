module NewsMonitor
  class Cluster < NibblerJSON
    element '.clusterId' => :id
    element '.clusterSize' => :size
    element :score
    elements :articles, with: Article
  end
end
