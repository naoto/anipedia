#-*- coding: utf-8
require 'nokogiri'
require 'open-uri'

module Anipedia
  class Machine

    DOMAIN = "wikipedia.org/wiki"

    def initialize(title, lang = :ja)
      @title = title
      @lang = lang.to_s.downcase
      @content = {}
      read
    end

    def read
      url = URI.escape("http://#{@lang}.#{DOMAIN}/#{@title}")
      subtitle = ""
      Nokogiri::HTML(open(url)).search("#mw-content-text *").each do |tag|
        case tag.name
        when /^h\d$/
          subtitle = tag.content.gsub("[編集]",'').strip
        when /^p$/
          @content[subtitle] ||= []
          @content[subtitle] << tag.content
        end
      end
    end

    def key(keyword)
      @content[keyword]
    end


  end
end
