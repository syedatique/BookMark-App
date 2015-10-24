get '/bookmarkers' do   # Reading
    if params[:search]
      @bookmarkers = Bookmarker.all(title: params[:search])
    else
      @bookmarker = Bookmarker.all
    end
    erb :'bookmarkers/index'
  end

get '/bookmarkers/new' do #Creating
  @bookmarker = Bookmarker.new
  erb :'bookmarkers/new'
end

post '/bookmarkers' do  # Creating
  @bookmarker = Bookmarker.new(params[:bookmarker]).save
  redirect to ("/bookmarkers") 
end

post '/bookmarkers/:id/delete' do  # Deleting (Updating)
  Bookmarker.find(params[:id]).destroy
  redirect to ("/bookmarkers") 
end

get '/bookmarkers/:id' do
  @bookmarker = Bookmarker.find(params[:id])
  # erb :'bookmarkers/edit'
  erb :'bookmarkers/show'
end

get '/bookmarkers/:id/edit' do # Updating
  @bookmarker = Bookmarker.find(params[:id])
  erb :'bookmarkers/edit'
end

post '/bookmarkers/:id' do # Updating
 @bookmarker = Bookmarker.find(params[:id])
 @bookmarker.update_attributes(params[:bookmarker])
  redirect to ("/bookmarkers") 
end
