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

    end
  end

  describe '#find_article' do
    it 'find article with given id' do

    end
  end

  describe '#find_cluster' do
    it 'find cluster with given id' do

    end
  end

end
