require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'json'

class Scrapcrypto

  def initialize
    @doc = 'https://coinmarketcap.com/all/views/all/'
    @hash_of_cryptos = {}
  end

  def perform
    @docu = Nokogiri::HTML(open(@doc))
    rows = @docu.xpath('//*[@id="currencies-all"]/tbody').css('tr')
    rows.each do |row|
      Crypto.create!(
      name:"#{row.css('td[3]').text}",
      price:"#{row.css('td[5]').text.strip[1..-1].to_f}")
    end
  end

  def save
    @docu = Nokogiri::HTML(open(@doc))
    rows = @docu.xpath('//*[@id="currencies-all"]/tbody').css('tr')
    rows.each do |row|
      Crypto.create!(
      name:"#{row.css('td[3]').text}",
      price:"#{row.css('td[5]').text.strip[1..-1].to_f}")
    end
  end

end
