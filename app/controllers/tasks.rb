get '/tasks' do 
	@tasks = Task.all
	erb :'tasks/index'
end

get '/tasks/new' do 
	erb :'tasks/new'
end

get '/tasks/:id' do 
	@task = Task.find(params[:id])
	erb :'tasks/show'
end

get '/tasks/edit' do 
	@task = Task.find(params[:id])
	erb :'tasks/edit'
end

post '/tasks' do 
	@task = Task.new(params)
	if @task.save
		redirect '/tasks'
	else
		redirect '/tasks/new'
	end
end

put '/tasks/:id' do 
	@task = Task.find(params[:id])
	# assign attributes/ update task...
	if @task.save
		redirect '/tasks'
	else
		erb :'tasks/edit'
	end
end
