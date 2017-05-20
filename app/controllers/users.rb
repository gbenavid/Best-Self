get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
	@user = User.find(params[:id])
	erb :'users/show'
end

post '/users' do
  @user = User.new(first_name: params[:first_name], email: params[:email], last_name:params[:last_name], password:params[:password])
  if @user.save
		login(@user)
		redirect "/users/#{@user.id}"
	else
		redirect '/users/new'
	end
end


get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

put '/users/:id' do
  update_user
end

delete '/users/:id' do
  User.find(params[:id]).destroy!
  redirect '/users'
end
