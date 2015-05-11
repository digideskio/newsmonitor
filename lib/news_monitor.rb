require 'news_monitor/version'

module NewsMonitor
  autoload :API,       'news_monitor/api'
  autoload :Cluster,   'news_monitor/cluster'
  autoload :Article,   'news_monitor/article'
  autoload :Publisher, 'news_monitor/publisher'
  autoload :Image,     'news_monitor/image'
  autoload :Topic,     'news_monitor/topic'
end
