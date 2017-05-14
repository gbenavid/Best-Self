get '/weeks' do 
	erb :'/weeks/index'
end

get '/weeks/:id' do 
	@week = Week.find(params[:id])
	erb :'weeks/show'
end