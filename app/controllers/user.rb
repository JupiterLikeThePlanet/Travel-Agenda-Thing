
enable :sessions
#index
get '/login' do
  erb :"/users/index"
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user.password == params[:password]
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/login'
end

#shows a create new user
get '/users/new' do
  erb :"/users/new"
end

#create
post '/users' do
  @user = User.new(params)
  if @user.save
    session[:id] = @user.id
    redirect '/users/#{@user.id}'
  else
    status 422
  end
end

#show
get '/users/:id' do
  @user = User.find(params[:id])
  erb :"users/show"
end

# shows an edit page
get '/users/:id/edit' do
  erb :"users/edit"
end

#edit
put '/users/:id/edit' do
  @user = User.find(params[:id])
  @user.update[params]
  redirect "/users/#{@user.id}"
end

#deletes the session
delete '/logout' do
  @user = User.find(params[:id])
  session[:id] = nil
  redirect '/'
end

#delete the user
delete '/users/:id' do
  @user = User.find(params[:id])
  @user.destroy
  redirect '/'
end

