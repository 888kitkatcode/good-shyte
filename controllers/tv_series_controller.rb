get '/' do
    tv_show_items = all_tv_series()
  
    erb :'tv_series/index', locals: {
      tv_series: tv_show_items
    }
end

get '/tv/new' do
    erb :'tv_series/new'
end

post '/recommend_tv_show' do
    name = params['name']
    image_url = params['image_url']
    description = params['description']
    where_to_watch = params['where_to_watch']
    user_id = current_user['id']
    user_name = current_user['name']
  
    recommend_tv_show(name, image_url, description, where_to_watch, user_id, user_name)

    redirect '/'
end

get '/tv_series/:id/edit' do
    id = params['id']

    tv_show = get_tv_show(id)
  
    erb :'tv_series/edit', locals: {
      tv_series: tv_show
    }
end
  
put '/update_tv/:id' do
    id = params['id']
    name = params['name']
    image_url = params['image_url']
    description = params['description']
    where_to_watch = params['where_to_watch']
  
    update_tv_recc(name, image_url, description, where_to_watch, id)
  
    redirect '/'
end

delete '/delete_tv_recc/:id' do
    id = params['id']
  
    delete_tv_recc(id)
    
    redirect '/'
end