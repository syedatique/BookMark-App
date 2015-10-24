get '/bookmarks' do   # Reading
    if params[:search]
      @bookmarks = Bookmark.all(genre: params[:search])
    else
      @bookmarks = Bookmark.all
    end
    erb :'bookmarks/index'
  end

get '/bookmarks/new' do #Creating
  @bookmark = Bookmark.new
  erb :'bookmarks/new'
end

post '/bookmarks' do  # Creating
  @bookmark = Bookmark.new(params[:bookmark]).save
  redirect to ("/bookmarks") 
end

post '/bookmarks/:id/delete' do  # Deleting (Updating)
  Bookmark.find(params[:id]).destroy
  redirect to ("/bookmarks") 
end

get '/bookmarks/:id' do
  @bookmark = Bookmark.find(params[:id])
  # erb :'bookmarks/edit'
  erb :'bookmarks/show'
end

get '/bookmarks/:id/edit' do # Updating
  @bookmark = Bookmark.find(params[:id])
  erb :'bookmarks/edit'
end

post '/bookmarks/:id' do # Updating
 @bookmark = Bookmark.find(params[:id])
 @bookmark.update_attributes(params[:bookmark])
  redirect to ("/bookmarks") 
end
