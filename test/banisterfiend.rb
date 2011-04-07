require 'minitest/autorun'
require 'minitest/mock'
require 'minitest/spec'
require 'banisterfiend'

module Kernel
  def suppress_warnings
    old_verbose, $VERBOSE = $VERBOSE, nil
    yield
  ensure
    $VERBOSE = old_verbose
  end
end

describe Banisterfiend do
  describe "#name" do
    it "it should generate a name using faker" do
      suppress_warnings do
        Faker::Internet = mock = MiniTest::Mock.new
        mock.expect(:domain_word, 'meep')
      end
      
      Banisterfiend::name.must_match(/meep\d{,2}/)
    end
  end
end