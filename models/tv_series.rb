def all_tv_series
    run_sql("SELECT * FROM tvseries ORDER BY id DESC") 
    # run_sql("SELECT tvseries.id, user_comments.user_name, user_comments.comment, user_comments.date_commented, tvseries.name, tvseries.description, tvseries.where_to_watch, tvseries.user_name, tvseries.date_posted, tvseries.image_url FROM user_comments INNER JOIN tvseries ON user_comments.tvseries_id = tvseries.id ORDER BY tvseries.id DESC")
    # run_sql("SELECT tvseries.id, tvseries.name, tvseries.image_url, tvseries.description, tvseries.where_to_watch, user_comments.user_name, user_comments.comment, user_comments.date_commented FROM user_comments INNER JOIN tvseries ON user_comments.tvseries_id = tvseries.id ORDER BY tvseries.id DESC")
    
end

def user_comments
    run_sql("SELECT * FROM user_comments ORDER BY id DESC")
end

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

def add_comment(user_id, tvseries_id, user_name, user_comment, date_posted)
    run_sql("INSERT INTO user_comments(user_id, tvseries_id, user_name, comment, date_commented) VALUES($1, $2, $3, $4, $5)", [user_id, tvseries_id, user_name, user_comment, date_posted])
end