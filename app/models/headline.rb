require 'open-uri'
require "google/cloud/translate"

class Headline < ApplicationRecord

  def self.scrape
    project_id = ENV["GCP_PROJECT_ID"]
    new_headlines=[]
    headlines_en=[]
    
    page = Nokogiri::HTML(open("https://www.bbc.com/ukrainian"))   
    page.css('div.buzzard-item a.title-link span').each {|x| new_headlines.push(x.text) }
    page.css('div.dove-item__body a h3 span').each {|x| new_headlines.push(x.text) }
    page.css('div.macaw-item__body a h3 span').each {|x| new_headlines.push(x.text) }

    text = new_headlines
    translate   = Google::Cloud::Translate.new project: project_id
    translation = translate.translate text, to: 'en'

    translation.each_index do |index|
      headlines_en.push(translation[index].text.inspect.gsub!(/\"/, ''))
    end

    new_headlines.each_index do |index|
      headline = Headline.create(text_ua: new_headlines[index], text_en_google: headlines_en[index])
    end

    puts "scrape completed!"
  end

end
