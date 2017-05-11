get '/' do
  # erb :'index'
  erb :'users/prev'
end

get '/users' do
  @users = User.all
  @users.map{|user| user.email.to_s}
  erb :'users/index'
end

get '/users/new' do
  @user = User.new
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  @user.password = @user.hashed_password
  if @user.save
    redirect '/users'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

patch '/users/:id' do
  update_user
end

put '/users/:id' do
  update_user
end

delete '/users/:id' do
  User.find(params[:id]).destroy!
  redirect '/users'
end
