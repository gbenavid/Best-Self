get '/weeks/:week_id/days' do 
	@week = Week.find(params[:id])
	@days = @week.days
	erb :'days/index'
end

get '/weeks/:week_id/days/:id' do 
	@week = Week.find(params[:week_id])
	@day = @week.days.find(params[:id])
	erb :'days/show'
end
