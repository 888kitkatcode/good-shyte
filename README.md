# Good Shyte

### Link to app:
https://good-shyte.herokuapp.com/

### MVP: 
This app will allow people to share recommendations of entertainment that they are enjoying, starting with an API that allows them to search for movies. 

Starting functionality will include:
1. <b>Sign up and login</b>: Users will be able to set up sign up in order to login to the dashboard.
2. <b>Incorrect login</b>: If user enters incorrect email or password for login, a message alerting the user of incorrect details appears.
3. <b>Add recommendations</b>
    - When a recommendation is added, it will appear on the front page (most recent recommendations at the top) with name of the tv show, where you are watching it (e.g Netflix, Disney Plus etc), optional description, image.
    - Users can edit and delete their own recommendations. Users cannot edit or delete recommendations of other users.
    - Users can add comments.

## Plan:
1. Record who posted the recommendation:
    - Create two tables in database - one for users and a second for tv recommendations. 
    - Insert user id and user's name as columns/foreign keys into tv recommendations table.
    - Show in the browser the name of the user who made the recommendation.
2. Limit the ability of other users to edit or delete recommendations made by other users:
    - if statement in index.erb.
3. When a recommendation is uploaded, the date of upload will be noted.
4. Have ability to comment on a recommendation.
5. If user enters incorrect email or password for login, a message alerting the user that they have entered incorrect details appears.
    - When someone enters an incorrect login, the page is currently blank. Redirect them to the sign-in page with a note that the login details do not exist and for them to enter the correct details or to sign-up.
6. Add API so that users can search for tv movie.
    - Add access to API when route for adding a movie/making a recommendation has been accessed.

### Future features:
These are ideas for features that I will add in order of priority in future.
1. Limit recommendations on the homepage to only those from within their chosen network (i.e. who they follow)
2. Change format of how date stamps appear. Fix bug in Heroku (time-stamp only shows up in AEST in local - records UTC in Heroku). Try STRF time for date and time of comments.
3. If an API cannot find an image, keep the user on the new recommendation route and display message that no images can be found.
4. Each section of the recommendation form must be filled before the recommendation can be submitted.
5. Include dropdown menu for logout button in nav bar.
6. Change format of comment section - show top 3 comments, after which there is a link to load more.
7. If a user has edited their recommendation, it will show '(edited)' beside the recommendation.
    - Add a column in database to record whether a post has been edited.
    - If a user edits their recommendation, send that update to the relevant table in the database and record ('edited') beside the name of the content.
8. Two users will not be able to sign up with the same email.
    - If statement.
9. Put a word or character limit on:
    - description when creating a recommendation; and
    - comment when making a comment on a recommendation.
10. Link to additional APIs and allow recommendations for books, music, apps, products, restaurants.
11. Allow sorting / filtering of dashboard e.g. sort by most recent/oldest recommendations, sort by users, type of media recommendation (e.g. tv shows, books, music etc), most popular content in general, most popular content by type.
12. Users can only sign up with a real email.
13. Amend tv series table to include all media and add a column for type (e.g. tv show, book, music).
    - Users will select the type from a drop-down menu.
14. Allow users to only add one recommendation per day or per week - TBC. Or one of each type of recommendation per week.
15. Users can view a page containing their own recommendations only (for ease of editing and deleting).
16. Allow users to reply to specific comments.
17. Tidy-up CSS including responsiveness.