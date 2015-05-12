$:.unshift File.expand_path('../../lib', __FILE__)
require 'news_monitor'
require 'minitest/spec'
require 'minitest/autorun'
require 'pry'

class MiniTest::Spec
  def described_class
    @described_class ||= self.class.ancestors.select {|c| c.respond_to? :desc }[-2].desc
  end
end
