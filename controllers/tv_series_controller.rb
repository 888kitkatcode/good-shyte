get '/' do
    tv_show_items = all_tv_series()

    # comment_items = get_comments_for_show(tvseries_id)
  
    erb :'tv_series/index', locals: {
      tv_series: tv_show_items,
    #   user_comments: comment_items
    }
end

get '/tv/new' do
    erb :'tv_series/new'
end

get '/search_results' do
    search_input = params['search_input']

    movie_info = HTTParty.get("https://www.omdbapi.com/?s=#{search_input}&apikey=#{ENV['OMDB_API_KEY']}")

    erb :'tv_series/search_results', locals: {
        movie_info: movie_info['Search']
    }
end

get '/new/api_image' do
    movie_title = params["movie_title"]
    movie_details = HTTParty.get("https://www.omdbapi.com/?t=#{movie_title}&apikey=#{ENV['OMDB_API_KEY']}")
    selected_image = movie_details["Poster"]    
    erb :'tv_series/api_image', locals: {
        movie_title: movie_title,
        selected_image: selected_image
    }
end

post '/recommend_tv_show' do
    name = params['name']
    image_url = params['image_url']
    description = params['description']
    where_to_watch = params['where_to_watch']
    user_id = current_user['id']
    user_name = current_user['name']
    date_posted = Date.today.to_s
  
    recommend_tv_show(name, image_url, description, where_to_watch, user_id, user_name, date_posted)

    redirect '/'
end

get '/tv_series/:id/edit' do
    id = params['id']
    tv_show = get_tv_show(id)
    name = tv_show['name']
  
    erb :'tv_series/edit', locals: {
        name: name,
        tv_series: tv_show
    }
end
  
put '/update_tv/:id' do
    id = params['id']
    # name = params['name']
    image_url = params['image_url']
    description = params['description']
    where_to_watch = params['where_to_watch']
  
    update_tv_recc(image_url, description, where_to_watch, id)
  
    redirect '/'
end

delete '/delete_tv_recc/:id' do
    id = params['id']
  
    delete_tv_recc(id)
    
    redirect '/'
end