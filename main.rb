require 'bundler'
Bundler.require
require 'sinatra'
require 'rss'
#commit
get '/' do
  @rss = RSS::Parser.parse("https://news.yahoo.co.jp/pickup/rss.xml")
  erb :index
end

