def all_tv_series
    run_sql("SELECT * FROM tvseries ORDER BY id DESC") 
end

# def get_comments_for_show(tvseries_id)
#     run_sql("SELECT * FROM user_comments WHERE tvseries_id = $1", [tvseries_id])[0]
# end

def recommend_tv_show(name, image_url, description, where_to_watch, user_id, user_name, date_posted)
    run_sql("INSERT INTO tvseries(name, image_url, description, where_to_watch, user_id, user_name, date_posted) VALUES($1, $2, $3, $4, $5, $6, $7)", [name, image_url, description, where_to_watch, user_id, user_name, date_posted]) 
end

def get_tv_show(id)
    run_sql("SELECT * FROM tvseries WHERE id = $1", [id])[0]
end

def update_tv_recc(image_url, description, where_to_watch, id)
    run_sql("UPDATE tvseries SET image_url = $1, description = $2, where_to_watch = $3 WHERE id = $4", [image_url, description, where_to_watch, id])
end

def delete_tv_recc(id)
    run_sql("DELETE FROM tvseries WHERE id = $1", [id])
end