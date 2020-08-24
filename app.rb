# frozen_string_literal: true

require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    erb :bookmarks
  end




  
end
