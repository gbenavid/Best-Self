helpers do 
	def update_user
    @user = User.find(params[:id])
    @user.update(params[:user])

    if @user.valid?
      redirect "/users/#{@user.id}"
    else
      status 422
      @errors = @user.errors.full_messages
      erb :'users/edit'
    end
  end
end