require 'minitest/autorun'
require 'minitest/spec'
require 'banisterfiend'

describe Banisterfiend do
  
  describe "#name" do
    it "should never (well) generate empty names" do
      1000.times.map { Banisterfiend::name }.any?(&:empty?).must_equal false
    end
  end
end