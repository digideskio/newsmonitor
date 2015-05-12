require 'uri'
require 'httparty'
require 'nibbler/json'

module NewsMonitor
  class API
    include HTTParty

    base_uri 'https://api.spixdiscovery.com:8083'

    def initialize(options={})
      @auth = {}
      @auth[:username] = options.fetch :username, ENV['NEWSMONITOR_USERNAME']
      @auth[:password] = options.fetch :password, ENV['NEWSMONITOR_PASSWORD']
    end

    def search(query, options={})
      conditions = URI.encode(query)
      options.merge! basic_auth: @auth, query: { with_info: true, cluster_size: 1 }
      response = get "/search/#{conditions}", options
      response['results'].map! do |cluster|
        Cluster.parse(cluster)
      end
    end

    def find_article(article_id, options={})
      options.merge! basic_auth: @auth
      response = get "/article/#{article_id}", options
      Article.parse(response)
    end

    def find_cluster(cluster_id, options={})
      options.merge! basic_auth: @auth, query: { with_info: true }
      response = get "/cluster/#{cluster_id}", options
      Cluster.parse response['results'].first
    end

    private

    def get(path, options)
      self.class.get(path, options).parsed_response
    end
  end
end
