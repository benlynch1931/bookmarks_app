require 'sinatra'
require './app/models/Bookmark.rb'

class BookmarkApp < Sinatra::Base
  set :views, File.expand_path('../../views',__FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)
  set :root, File.dirname(__FILE__)


  get '/' do
    "Hello World"
  end

  get '/bookmarks' do
    @bookmark = Bookmark.all_records
    erb(:bookmarks)
  end
end
