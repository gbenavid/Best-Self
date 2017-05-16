get '/plans' do
  erb :'plans/index'
end

get '/plans/new' do
  erb :'plans/new'
end

post '/plans' do
  @plan = Plan.new(params)
  if @plan.save
    redirect '/plans'
  else
    erb :'plans/new'
  end
end

get '/plans/:id' do
  @plan = Plan.find(params[:id])
  erb :'plans/show'
end
