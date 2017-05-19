# rethinking
- marketing is the main problem.
- so I need audience that is actively seeking and open
  - new store
    - store set up
      http://shopafree.me/
    - first sales up to 100
    - product validation
    - is there an app for that?
  - others
    - approve editing  
  - from amazon
  - from etsy
  - kickstarter
    - there is already some content on it

# Testing

- installing and uninstalling
- onboarding
  - install
  - change setting
  - discount
  - increase count
- test enabling and disabling
  - product, collection
  - checkout, blog, etc
- test product variant
  - with single options 
  - with multiple options
    - default value
    - no default value
      - it select the first one
      - if you select the option, it will switch to the new one.
- test new customer vs old customer.
  - new customer will see it
  - old customer will not.
    
# Heroku

heroku logs --tails
heroku run bundle exec rake -T
heroku run bundle exec rake db:rollback


# Doing

https://#{ ENV['CONTRIBSYS_USERNAME_PASSWORD'] }@gems.contribsys.com
git@bitbucket.org:eng_guan_yeo/omniauth-shopify-oauth2.git
https://eng_guan_yeo:Zepth72BB@bitbucket.org:eng_guan_yeo/omniauth-shopify-oauth2.git
=================>
- deploy
  - I change the gems.  so I need to package them and deploy.
    - gems that I changed
      - omniauth-shopify-oauth2-1.1.17
      - shopify-sinatra-app-0.3.3
    - clone them on github
    - import them to bitbucket
    - make changes to them 
    - how do I do that?
  

  set RACK_ENV = production 
  set database url 

- test

- omniauth
  - routing to failure ...
  - retry
  - clear ... data?


testing again.
- new customer
- old customer.


what happen
- did not log in
- at checkout page, I logged in
- when I get back, the page does not seem to have proxy loaded.

- review product page

- remove name of the customer ...


# To Do

- github
  - fork all the repos

- clean up 
  - review setting
    - timing for trigger and font size

- deployment
- packaging

# Done
- add in screentime
  - merge with screen time
    - change html to have product microdata
    - test it
    - import it 
  - merge it with peekabar
  - add in credit
  - add in peekabar css 
  - new issue ... switching tab should pause count but it does not ...
  - add discount and redirect to checkout
    - get variant id 
      - get product id
      - if only 1 variant
        - grep it from url.json
      - if more than 1 variant
        - grep the id from url or ask user to enter id  
    - refer to a perma cart with the item added
    shop_url/cart/variant_id:qty?discount=code
    - add in discount code
    - redirect to checkout page
  - conditions
    - check whether new customer ... 
      if it is a customer whether he has paid a purchase
      or 30 days reorder .... (deferred)
    - whether revisit 

    - if signed in 
      - and if have placed 1st order, do not display
        else display
      else
        display

- add in settings
- add in admin
  - styling

- admin
  - saves the form.
  - flash alert
  - preview bar
  - error

- webhooks
  - set up webhooks to see which one   
  - deal with duplicates
  - clean up
    - 36, 568  569 load_first_order
  - disable it at certain places
    - where?
      - as long as there is add to cart
      - collections/all should not load
      - search
      - about us
      - blog
      - cart
      - checkout as well

# Deferred
- puma config
- usuage Charge billing
- foreman proc file
  - cannot solve 
  - something wrong with foreman since I can run the command in procfile ... no problem.
    but when I tried it with foreman ... request never come back.  connection establish.  but took very long to process ..
- charging the user


# notes

bundle exec rake resque:work QUEUE=*

 bundle exec foreman run rackup -s Puma config.ru
ngrok http 4567

bundle exec pry -I. -r lib/app.rb

# omniauth
oauth2 => omniauth => omniauth-oauth2 => omniauth-shopify-oauth2
rack intercept calls ... if it is callback path ... it will call it 


# admin
- company 

HSBC 3012
08Feb1972000801

Manhattan -168
Y08027204150Z
E

= erb :'_top_bar', layout: false, locals: locals
