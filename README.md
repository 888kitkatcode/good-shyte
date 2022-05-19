# Good Shyte

### Link to app:


### MVP: 
This app will allow people to share recommendations of entertainment that they are enjoying, starting with [tv shows] within their chosen network.

Starting functionality will include:
1. <b>Sign up and login</b>: Users will be able to set up sign up in order to login to the dashboard.
2. <b>Incorrect login</b>: If user enters incorrect email or password for login, a message alerting the user of incorrect details appears.
3. <b>Add recommendations</b>
    - When a recommendation is added, it will appear on the front page (most recent recommendations at the top) with name of the tv show, where you are watching it (e.g Netflix, Disney Plus etc), optional description, image.
    - Users can edit and delete their own recommendations. Users cannot edit or delete recommendations of other users.
    - Users can like recommendations.

## Plan:
1. Record who posted the recommendation:
    - Create two tables in database - one for users and a second for tv recommendations. 
    - Insert user id and user's name as columns/foreign keys into tv recommendations table.
    - Show in the browser the name of the user who made the recommendation.
2. Limit the ability of other users to edit or delete recommendations made by other users:
    - if statement in index.erb.
3. When a recommendation is uploaded, the date of upload will be noted.
4. Have ability to like a recommendation:
    - JS - Add Event Listener?
5. If user enters incorrect email or password for login, a message alerting the user that they have entered incorrect details appears.
    - When someone enters an incorrect login, the page is currently blank. Redirect them to the sign-in page with a note that the login details do not exist and for them to enter the correct details or to sign-up.

### API?
1. Start with being able to search for tv shows?
    - Add access to API when route for adding a tv show/making a recommendation has been accessed.

### Future features:
These are ideas for features that I will add in order of priority if I have time / in future.
1. If a user has edited their recommendation, it will show '(edited)' beside the recommendation.
    - JS - Add Event Listener - when someone hits 'Like' box, their name appears?
2. Two users will not be able to sign up with the same email.
    - If statement.
3. Allow users to comment on recommendations.
4. Put a word or character limit on:
    - description when creating a recommendation; and
    - comment when making a comment on a recommendation.
4. Link to additional APIs and allow recommendations for books, music, apps, products, restaurants.
5. Allow sorting / filtering of dashboard e.g. sort by most recent/oldest recommendations, sort by users, sort by type of media (e.g. tv shows, books, music etc).