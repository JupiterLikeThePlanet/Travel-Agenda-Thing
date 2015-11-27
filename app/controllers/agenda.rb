#index
# get "/agendas" do
#   @agendas = Agenda.all
#  erb :"agendas/index"
# end

#show
get '/agendas/:id' do
  @agenda = Agenda.find(params[:id])
  erb :"/agendas/show"
end

#new // show new form
get '/agendas/new' do
  erb :"agendas/new"
end

# new agenda
post '/agendas' do
  @agenda = Agenda.new(params)
  redirect '/agendas/#{@agenda.id}'
end

#show edit form
get '/agendas/edit' do
  @agenda = Agenda.find(params[:id])
  erb :'/agendas/edit'
end

#post edit changes
put '/agendas/edit' do
  @agenda = Agenda.find(params[:id])
  @agenda.update
  redirect "/agendas/#{@agenda.id}"
end

#delete
delete '/agendas/delete' do
  @agenda = Agenda.find(params[:id])
  @user = User.find(@agenda.user_id)
  @agenda.destroy
  redirect "/users/#{@user.id}"
end
