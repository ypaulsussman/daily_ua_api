require 'open-uri'

class Headline < ApplicationRecord

  def self.scrape
    page = Nokogiri::HTML(open("https://www.bbc.com/ukrainian"))   
    new_headlines=[]
    page.css('div.buzzard-item a.title-link span').each {|x| new_headlines.push(x.text) }
    page.css('div.dove-item__body a h3 span').each {|x| new_headlines.push(x.text) }
    page.css('div.macaw-item__body a h3 span').each {|x| new_headlines.push(x.text) }

    new_headlines.each_index do |index|
      headline = Headline.create(text_ua: new_headlines[index])
    end

  end

end
