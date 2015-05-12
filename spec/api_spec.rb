require_relative 'minitest_helper'

describe NewsMonitor::API do

  describe '#initialize' do
    it 'setup authentication given username and password' do
      api = described_class.new username: 'test', password: 'test2'
      auth = api.instance_variable_get :@auth
      auth[:username].must_equal 'test'
      auth[:password].must_equal 'test2'
    end

    it 'fallback to environment variables' do
      ENV['NEWSMONITOR_USERNAME'] = 'test2'
      ENV['NEWSMONITOR_PASSWORD'] = 'test'

      auth = described_class.new.instance_variable_get :@auth
      auth[:username].must_equal 'test2'
      auth[:password].must_equal 'test'
    end
  end

  describe '#search' do
    it 'fetch clusters of articles given the query' do
      api = described_class.new
      results = api.search "lavagem"
      results.size.must_equal 50
      results.must_be_instance_of Array
      results.map(&:class).uniq.must_equal [NewsMonitor::Cluster]
    end
  end

  describe '#find_article' do
    it 'find article with given id' do
      api = described_class.new
      article = api.find_article 164240971
      article.must_be_instance_of NewsMonitor::Article
      article.published_at.must_be_instance_of Time
      article.created_at.must_be_instance_of Time
      article.id.must_equal 164240971
    end
  end

  describe '#find_cluster' do
    it 'find cluster with given id' do
      api = described_class.new
      cluster = api.find_cluster 164240971
      cluster.must_be_instance_of NewsMonitor::Cluster
      cluster.id.must_equal 164240971
      cluster.size.must_equal 1
      cluster.articles.wont_be :empty?
    end
  end

end
