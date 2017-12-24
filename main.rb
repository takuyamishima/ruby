require 'sinatra'
require 'rss'

get '/' do
  @rss = RSS::Parser.parse("https://news.yahoo.co.jp/pickup/rss.xml")
  erb :index
end

