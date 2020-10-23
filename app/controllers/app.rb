require 'sinatra'
require './app/models/Bookmark.rb'

class BookmarkApp < Sinatra::Base
  set :views, File.expand_path('../../views',__FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)
  set :root, File.dirname(__FILE__)
  enable :method_override


  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all_bookmarks
    erb :bookmarks
  end

  get '/add_bookmark' do
    erb(:'add_bookmarks')
  end

  post '/add_to_database' do
    Bookmark.create(params[:title], params[:url])
    redirect('/bookmarks')
  end

  get '/edit_bookmarks' do
    @bookmarks = Bookmark.all_bookmarks
    erb(:'edit_bookmarks')
  end

  delete '/delete_bookmark' do
    Bookmark.delete(params[:check])
    redirect('/bookmarks')
  end

  run! if app_file == $0
end
