# list of all the cities
get '/cities' do
  erb :"cities/index"
end

# show the form to add a new city
get '/cities/new' do
  erb :"cities/new"
end

# add a new city
post '/cities' do
  @city = City.new(params[])
  redirect '/cities'
end

# show one city page
get '/cities/:id' do
  @city = City.find(params[:id])
  erb :"cities/show"
end

# show the page to edit a city
get '/cities/:id/edit' do
  @city = City.find(params[:id])
  erb :"cities/edit"
end

# edit a city
put '/cities/:id/edit' do
  @city = City.find(params[:id])
  @city.update(params)
  redirect '/cities/#{@city.id}'
end

# delete a city
delete '/cities/:id' do
  @city = City.find(params[:id])
  @city.destroy
  redirect '/cities'
end
