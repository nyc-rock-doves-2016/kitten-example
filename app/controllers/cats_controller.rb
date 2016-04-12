get '/cats' do
  @cats = Cat.all
  erb :'cats/index'
end

get '/cats/new' do
  erb :'cats/new'
end

get '/cats/:id' do
  @cat = Cat.find_by(id: params[:id])
  erb :'cats/show'
end

post '/cats' do
  new_cat = Cat.new(params)
  if new_cat.save
    redirect "/cats/#{new_cat.id}"
  else
    erb :'cats/new'
  end
end

