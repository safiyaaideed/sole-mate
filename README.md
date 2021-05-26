#  Identification of the problem you are trying to solve by building this particular marketplace app.
In 2019, it was estimated that the sneaker resale market was valued at around 6 billion U.S. dollars globally. There is a very high demand when it comes to rare and limited edition sneakers. This particular marketplace was built so that it is easier for anyone who wants to buy sneakers online for a cheaper price. Most sneaker resell stores upsell the sneakers by almost triple their worth when they are more rare and limited items. This marketplace (Sole-Mate) strives to give the best prices available.

# 	Why is it a problem that needs solving?

The main issue is accessibility, to put it simply it is difficult to find limited edition sneakers at a good price, Sole-Mate lets you resell your own brand new or used shoes at a few clicks of a button. Sneaker resale is a massive market and it is still very difficult to have access to a lot of shoes because of the limited stock a lot of marketplaces provide. Sole-Mate lets anyone sell their new and used authentic sneakers. 

# A link (URL) to your deployed app (i.e. website)

# A link to your GitHub repository (repo).

- Ensure the repo is accessible by your Educators
# R11	Description of your marketplace app (website), including:
- Purpose

To have an easily accessible marketplace for not only authentic sneaker buyers but sellers too, givng the seller the ability to upload as many sneakers as possible. As well as providing the buyer with a safe and easy environment for purchase. 

- Functionality / features

Authorization: this function only lets the seller edit and delete the item, other users do not have any access to edit or delete another sellers items, even if the link is copied from the edit page and pasted into the search bar of a different account it will have a sign that says "unauthorized access"

Authentication: Buyers have the ability to browse all the items without having to make an account/log in. This makes purchase very easy for buyers who want to purchase something quickly without having to take time out to sign up.

Creates users accounts that stores information for easy future log in.

Shows available products for sale  without having to log in.



- Sitemap


- Screenshots


- Target audience

The target audience is very broad and cany apply to basically anybody globally who would like to purchase a new pair of shoes online.

- Tech stack (e.g. html, css, deployment platform, etc)
HTML
CSS
BootStrap
Javascript
Ruby on Rails
Postgresql
Heroku 
Gems: Devise, Rolify, SimpleForm, .Env

# User stories for your app


User abilities:

Sign up
Log in/sign out
Create your listing
Remove your listing
Edit your listing
Ability to see other listings 


# Wireframes for your app

# An ERD for your app

# Explain the different high-level components (abstractions) in your app

The web app is built on Rails and is based on the Model-View-Controller architecture. This pattern allows developers to create complex web apps that are easily built and maintainable. The MVC pattern is a popular architectural pattern when building CRUD applications. This web application consists of routes, views, controllers and models. In this application Routes are used to direct the the requests to the controller which then take the data and returns it to the user which is what they view in the browser. The models represent the database tables and are used to load data, in this case there is a user model category and items model.


# Detail any third party services that your app will use

The third party applications used in the development of this web application were Bootstrap, a CSS framework with ready to use templates for the use of web applications, heroku which is a cloud platform used to manage and deploy applications in an easy way that makes them production ready. The ruby gems used were .env, Rolify for authorisation, simple form for log in an devise for authentication. 

# Describe your projects models in terms of the relationships (active record associations) they have with each other

The types of association rails has are the following:

The belongs_to Association
The has_one Association
The has_many Association
The has_many :through Association
The has_one :through Association
The has_and_belongs_to_many Association

The user has many products and those products belong to the one user, eg. The user can upload many different sneakers but all of those sneakers belong to the one user and are accessible/editable by the one user. 

Here is the code that supports that the user has many products and the products belong to one user.

![Association1](associations.png)
![Association2](associations1.png)


# Discuss the database relations to be implemented in your application


# Provide your database schema design

# Describe the way tasks are allocated and tracked in your project

# R21	An outline of the problem you were trying to solve by building this particular marketplace app, and why it’s a problem that needs solving

# R22	A walkthrough of your app