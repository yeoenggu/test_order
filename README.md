
# TO DO
- new listing
  - video
    - show text and sequence 
- mobile screenshots
- better onboarding
  - readme first
    - tool for debug
  - if discount code is not changed, we use an alert
- add in disabling
  - add in documentation
    - images
    - help + support
- increase font size
- clean up
====>
- error reporting
- revisit airbrake


- engage dev from video
- early manual marketing
  - fb shopify groups
  - influencer blogs
  - keywords:
    - first fb campaign. first 10 user or 100 user
  - forum?

- clean up?


# done
- read up on engaging shopify

# e-commerce

- close the loop ....
  - valid business problem.
  - question is whether a simple solution will suffice
    - just put a coupon
    - to justify paying for it
      - better targeting
        - based on product
        - based on credit card
        - based on address
        - types of campaign
          - social
          - subscription
          - warrenty/product info

  - qr code on box.  
  - get a coupon for next purchase 
  - perform an action



  - this will be good for lazada

- lazada discovery
  - no direct communications

- hotjar

- other apps
  - messaging
    - personalized, dynamic messaging
  - dynamic hero
  - blog to product
    - custom CTA
      - email
      - product page
      - blog post
  - personalized product
    - reoder
    - low in stock
    - back in stock
  - sales event?
    - member sales
  - Q+A
    - someone already did this
- popular free apps ?

- follow up on first order
  - next order
  - feedback
  - reorder

- live email

- shopify marketing
  - 1st 25 .... manually via service, via forum.  mass emailing not allow



# hotjar

# marketing
- fb
- landing page
- video?


# marketing research
- who
- what
  - keywords
  - topics
- why
- fb



# Done


# Deferred
- puma config
- usuage Charge billing
- foreman proc file
  - cannot solve 
  - something wrong with foreman since I can run the command in procfile ... no problem.
    but when I tried it with foreman ... request never come back.  connection establish.  but took very long to process ..
- charging the user
- omniauth
  - routing to failure ...
  - retry
  - clear ... data?


# omniauth
oauth2 => omniauth => omniauth-oauth2 => omniauth-shopify-oauth2
rack intercept calls ... if it is callback path ... it will call it 


# admin
- company 

HSBC 3555.06
08Feb1972507926
5120 4333 8800 0801

507926


08Feb1972000801
08Feb1972150Z
Manhattan -264
Y08027204150Z
E
663883

# Heroku

heroku logs --tails
heroku run bundle exec rake -T
heroku run bundle exec rake db:rollback

heroku run console (irb)
require './lib/app.rb'

Shop.new
Shop.all

Shop.sum(:count)

bundle update gem ... when updated private gems


# Local dev

## setting up shopify dev app 
App URL
https://1c3cdbb2.ngrok.io/

Whitelisted redirection URL(s)
https://1c3cdbb2.ngrok.io/auth/shopify/callback

App Proxy
- sub path prefix => apps
- sub path => test
https://1c3cdbb2.ngrok.io/proxy

whenever you change ngrok, make sure db is empty.  Manually delete it if needed.
3rd part JS is added if shop is new.  

## sinatra env

SHOPIFY_REDIRECT_URI=https://b71634ca.ngrok.io/auth/shopify/callback

## running local server
bundle exec foreman run rackup -s Puma config.ru
ngrok http 9292
bundle exec pry -I. -r lib/app.rb

bundle exec rake resque:work QUEUE=*

 bundle exec foreman run rackup -s Puma config.ru
ngrok http 4567

bundle exec pry -I. -r lib/app.rb


stores that I can test jquery

https://www.popchartlab.com/products/signature-axes-greeting-card
no default option.

https://www.theghostlystore.com/collections/music/products/detroit-part-ii
first order won't work.  custom jquery

https://www.flatspot.com/products/drakies-fc-shirt-black-white
default option is "defaultValue"
should select last option




