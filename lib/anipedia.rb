require "anipedia/version"

module Anipedia
  # Your code goes here...
  
  require 'anipedia/machine'
  
  def self.load(title)
    Machine.new title
  end
end
