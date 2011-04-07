require 'faker'
require 'banisterfiend/version'

module Banisterfiend
  extend self
  
  def name
    digit = rand(30) + 70 if rand(3) == 1
    Faker::Internet.domain_word + digit.to_s
  end
end