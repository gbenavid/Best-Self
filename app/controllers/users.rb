get '/users/new' do
	erb :'users/new'
end

get '/users/:id' do 
	@user = User.find(params[:id])
	erb :'users/show'
end

post '/users' do 
	@user = User.new(params)
	if @user.save
		login(@user)
		redirect "/users/#{@user.id}"
	else
		redirect '/users/new'
	end
end
