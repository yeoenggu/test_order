
# Doing
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


=================>
- styling
  ==>
  - add message
- admin
  - use sample app from shopify
    - working end to end
  - add from seaff (css)
  - add color picker
- testing



proxy get loaded in login page


after uninstalling, installing it again with lead to error ?  why
if I delay in logging in to dev shop .... when I log in later and try to install I will get csrf error


if u click on click me, then go back ... it does not run

# To Do
- add in screentime
- add in settings
- add in admin

# Done
- deployment
  
transcient error
- omniauth csrf detected
- Sinatra::App ... nil.


 2017-02-22 16:20:33 - NoMethodError - undefined method `token=' for nil:NilClass:
2017-02-22T16:20:33.758843+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/shopify-sinatra-app-0.3.3/lib/sinatra/shopify-sinatra-app.rb:105:in `clear_session'
2017-02-22T16:20:33.758845+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/shopify-sinatra-app-0.3.3/lib/sinatra/shopify-sinatra-app.rb:57:in `rescue in shopify_session'
2017-02-22T16:20:33.758845+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/shopify-sinatra-app-0.3.3/lib/sinatra/shopify-sinatra-app.rb:43:in `shopify_session'
2017-02-22T16:20:33.758846+00:00 app[web.1]:  /app/lib/app.rb:54:in `block in <class:SinatraApp>'
2017-02-22T16:20:33.758847+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1610:in `call'
2017-02-22T16:20:33.758848+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1610:in `block in compile!'
2017-02-22T16:20:33.758849+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:974:in `block (3 levels) in route!'
2017-02-22T16:20:33.758850+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:993:in `route_eval'
2017-02-22T16:20:33.758851+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:974:in `block (2 levels) in route!'
2017-02-22T16:20:33.758851+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1014:in `block in process_route'
2017-02-22T16:20:33.758852+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1012:in `catch'
2017-02-22T16:20:33.758852+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1012:in `process_route'
2017-02-22T16:20:33.758853+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:972:in `block in route!'
2017-02-22T16:20:33.758854+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:971:in `each'
2017-02-22T16:20:33.758855+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:971:in `route!'
2017-02-22T16:20:33.758855+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1084:in `block in dispatch!'
2017-02-22T16:20:33.758856+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1066:in `block in invoke'
2017-02-22T16:20:33.758857+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1066:in `catch'
2017-02-22T16:20:33.758857+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1066:in `invoke'
2017-02-22T16:20:33.758858+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1081:in `dispatch!'
2017-02-22T16:20:33.758858+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:906:in `block in call!'
2017-02-22T16:20:33.758859+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1066:in `block in invoke'
2017-02-22T16:20:33.758860+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1066:in `catch'
2017-02-22T16:20:33.758860+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:1066:in `invoke'
2017-02-22T16:20:33.758861+00:00 app[web.1]:  /app/vendor/bundle/ruby/2.3.0/gems/sinatra-1.4.6/lib/sinatra/base.rb:906:in `call!'




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

# admin
- credit cards
  - manhatten - done
    Y08027204150Z
  - hsbc - done
    08Feb1972000801
  - POSB
  - UOB - done

- buy car camera

# Zacky

## games
1) treasure hunt
2) water bomb
3) dino tail stomp
- balloon as tail, string.  
- last man standing
4) PIN THE TOOTH ON THE DINO
 
- 2 prizes

## DECO

1) balloons
2) plates
3) feet?



# Ipoh
16 Jun - Fri - depart to Ipoh
17 Jun - Sat Ipoh
18 Jun - Sun Ipoh
19 Jun - Mon Port Dickson
20 Jun - Tue Port Dickson
21 Jun - Wed back





