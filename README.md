
# Doing

- admin
  - saves the form.
  - flash alert
  - preview bar
  - error

- omniauth error redirect

- review UI for appearance
  - font size => 14 Px


- testing
  - test scenarios
- deployment


- httplog .... 
  - only 

  foreman proc file
  - cannot solve 
  - something wrong with foreman since I can run the command in procfile ... no problem.
    but when I tried it with foreman ... request never come back.  connection establish.  but took very long to process ..

  - coupon code
    - email  - no need.
    - create the table
    - change the form.

=================>
  - conversion
    - manually step thru to see what parameters can we pass


- deploy
  set RACK_ENV = production 
  set database url 

- omniauth
  - routing to failure ...
  - retry
  - clear ... data?

# To Do
- deployment

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

  
- github
  - fork all the repos

# Deferred
- puma config
- conversion tracking
    - https://help.shopify.com/themes/customization/order-status/add-conversion-tracking-to-thank-you-page
      - need conditional integration - landing_site_ref
      - use keen or anything ...
- usuage Charge billing

# notes


 bundle exec foreman run rackup -s Puma config.ru
ngrok http 4567

bundle exec pry -I. -r lib/app.rb

# omniauth
oauth2 => omniauth => omniauth-oauth2 => omniauth-shopify-oauth2
rack intercept calls ... if it is callback path ... it will call it 


# admin
- company 

https://sg-drinks-party.myshopify.com/admin/apps/ca39e1ad3ef61cb46d61311cc8ca5cbf/?hmac=5a7a7a2f265fd897e03b49758b69958d889d3c11bb394adb4b22fb44ca057fbd&locale=en&protocol=https%3A%2F%2F&shop=sg-drinks-party.myshopify.com&timestamp=1493814703