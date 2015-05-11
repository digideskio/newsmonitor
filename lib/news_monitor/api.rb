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
      parsed_response = self.class.get("/search/#{conditions}", options).parsed_response
      parsed_response['results'].map! do |cluster|
        Cluster.parse(cluster)
      end
    end
  end
end
