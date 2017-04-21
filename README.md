
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
oauth2 => omniauth => omniauth-oauth2 => omniauth-shopify-oauth2
rack intercept calls ... if it is callback path ... it will call it 

=================>
- styling
  ==>
  - add message
- admin
  - saves the form.
  - flash alert
  +++++++
  - preview bar
  - error

  - UI for appearance


- font size => 14 Px
- font family
  - need back up styling
    sh

deferred on SEAFF http://seaff.microapps.com/

- testing

inside shopify oauth and omniauth oauth

auth/failure 
https://github.com/Shopify/omniauth-shopify-oauth2/blob/master/example/config.ru
https://github.com/omniauth/omniauth/wiki/FAQ

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
 ... could not replicate .... I know it is webhook ... trying to subscribe to uninstall webhook twice

I, [2017-04-11T00:18:46.775343 #83164]  INFO -- omniauth: (shopify) Setup endpoint detected, running now.
I, [2017-04-11T00:18:46.775679 #83164]  INFO -- omniauth: (shopify) Request phase initiated.
Warning! Rack::Session::Cookie data size exceeds 4K.
Warning! Rack::Session::Cookie failed to save session. Content dropped.
Warning! Rack::Session::Cookie data size exceeds 4K.
Warning! Rack::Session::Cookie failed to save session. Content dropped.
I, [2017-04-11T00:18:48.351159 #83164]  INFO -- omniauth: (shopify) Setup endpoint detected, running now.
I, [2017-04-11T00:18:48.351511 #83164]  INFO -- omniauth: (shopify) Callback phase initiated.
D, [2017-04-11T00:18:48.363543 #83164] DEBUG -- : [httplog] Connecting: sg-drinks-party.myshopify.com:443
D, [2017-04-11T00:18:49.171470 #83164] DEBUG -- : [httplog] Sending: POST http://sg-drinks-party.myshopify.com:443/admin/oauth/access_token
D, [2017-04-11T00:18:49.171593 #83164] DEBUG -- : [httplog] Header: user-agent: Faraday v0.9.2
D, [2017-04-11T00:18:49.171636 #83164] DEBUG -- : [httplog] Header: content-type: application/x-www-form-urlencoded
D, [2017-04-11T00:18:49.171673 #83164] DEBUG -- : [httplog] Header: accept-encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3
D, [2017-04-11T00:18:49.171708 #83164] DEBUG -- : [httplog] Header: accept: */*
D, [2017-04-11T00:18:49.171742 #83164] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:18:49.171824 #83164] DEBUG -- : [httplog] Data: client_id=ca39e1ad3ef61cb46d61311cc8ca5cbf&client_secret=e334c3f009badf61e79db743a64faeaa&code=38601fd7e6472be5568ea5b6dad919d0&grant_type=authorization_code&redirect_uri=https%3A%2F%2F5b85dee9.ngrok.io%2Fauth%2Fshopify%2Fcallback
D, [2017-04-11T00:18:49.475884 #83164] DEBUG -- : [httplog] Status: 200
D, [2017-04-11T00:18:49.475998 #83164] DEBUG -- : [httplog] Benchmark: 0.303986 seconds
D, [2017-04-11T00:18:49.476056 #83164] DEBUG -- : [httplog] Header: server: nginx
D, [2017-04-11T00:18:49.476093 #83164] DEBUG -- : [httplog] Header: date: Mon, 10 Apr 2017 16:18:49 GMT
D, [2017-04-11T00:18:49.476127 #83164] DEBUG -- : [httplog] Header: content-type: application/json; charset=utf-8
D, [2017-04-11T00:18:49.476262 #83164] DEBUG -- : [httplog] Header: transfer-encoding: chunked
D, [2017-04-11T00:18:49.476303 #83164] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:18:49.476336 #83164] DEBUG -- : [httplog] Header: vary: Accept-Encoding
D, [2017-04-11T00:18:49.476370 #83164] DEBUG -- : [httplog] Header: referrer-policy: origin-when-cross-origin
D, [2017-04-11T00:18:49.476468 #83164] DEBUG -- : [httplog] Header: x-frame-options: DENY
D, [2017-04-11T00:18:49.476504 #83164] DEBUG -- : [httplog] Header: x-shopid: 7041073
D, [2017-04-11T00:18:49.476536 #83164] DEBUG -- : [httplog] Header: x-shardid: 14
D, [2017-04-11T00:18:49.476568 #83164] DEBUG -- : [httplog] Header: cache-control: no-cache
D, [2017-04-11T00:18:49.476600 #83164] DEBUG -- : [httplog] Header: set-cookie: _secure_admin_session_id=52efe484de4e25e76488760558ebb069; path=/admin; secure; HttpOnly, request_method=POST; path=/
D, [2017-04-11T00:18:49.476634 #83164] DEBUG -- : [httplog] Header: x-request-id: c6b54c3b-5b0b-4cad-bead-d1822062a873
D, [2017-04-11T00:18:49.476670 #83164] DEBUG -- : [httplog] Header: content-security-policy: default-src 'self' data: blob: 'unsafe-inline' 'unsafe-eval' https://* shopify-pos://*; block-all-mixed-content; child-src 'self' https://* shopify-pos://*; connect-src 'self' wss://* https://*; script-src https://cdn.shopify.com https://checkout.shopifycs.com https://js-agent.newrelic.com https://bam.nr-data.net https://dme0ih8comzn4.cloudfront.net https://api.stripe.com https://mpsnare.iesnare.com https://appcenter.intuit.com https://www.paypal.com https://stats.g.doubleclick.net https://www.google-analytics.com https://visitors.shopify.com https://v.shopify.com https://widget.intercom.io https://js.intercomcdn.com 'self' 'unsafe-inline' 'unsafe-eval'; upgrade-insecure-requests; report-uri /csp-report?source%5Baction%5D=access_token&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Foauth&source%5Bsection%5D=admin&source%5Buuid%5D=c6b54c3b-5b0b-4cad-bead-d1822062a873
D, [2017-04-11T00:18:49.476934 #83164] DEBUG -- : [httplog] Header: x-content-type-options: nosniff, nosniff
D, [2017-04-11T00:18:49.476994 #83164] DEBUG -- : [httplog] Header: x-download-options: noopen
D, [2017-04-11T00:18:49.477032 #83164] DEBUG -- : [httplog] Header: x-permitted-cross-domain-policies: none
D, [2017-04-11T00:18:49.477067 #83164] DEBUG -- : [httplog] Header: x-xss-protection: 1; mode=block; report=/xss-report?source%5Baction%5D=access_token&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Foauth&source%5Bsection%5D=admin&source%5Buuid%5D=c6b54c3b-5b0b-4cad-bead-d1822062a873
D, [2017-04-11T00:18:49.477102 #83164] DEBUG -- : [httplog] Header: p3p: CP="NOI DSP COR NID ADMa OPTa OUR NOR"
D, [2017-04-11T00:18:49.477145 #83164] DEBUG -- : [httplog] Header: x-dc: chi2
D, [2017-04-11T00:18:49.477323 #83164] DEBUG -- : [httplog] Response:
{"access_token":"647349fe1cc50091a236caa9369a28e6","scope":"read_products,read_orders,write_script_tags"}
E, [2017-04-11T00:18:49.478114 #83164] ERROR -- omniauth: (shopify) Authentication failure! csrf_detected: OmniAuth::Strategies::OAuth2::CallbackError, csrf_detected | CSRF detected
E, [2017-04-11T00:18:49.478540 #83164] ERROR -- omniauth: (shopify) Authentication failure! invalid_credentials: OmniAuth::Strategies::OAuth2::CallbackError, csrf_detected | CSRF detected






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
- company 

# Zacky

## games
1) treasure hunt
2) water bomb
3) dino tail stomp
- balloon as tail, string.  
- last man standing

 
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


# working 

I, [2017-04-11T00:22:04.367127 #88425]  INFO -- omniauth: (shopify) Setup endpoint detected, running now.
I, [2017-04-11T00:22:04.367699 #88425]  INFO -- omniauth: (shopify) Request phase initiated.
I, [2017-04-11T00:22:06.660565 #88425]  INFO -- omniauth: (shopify) Setup endpoint detected, running now.
I, [2017-04-11T00:22:06.660929 #88425]  INFO -- omniauth: (shopify) Callback phase initiated.
D, [2017-04-11T00:22:06.677537 #88425] DEBUG -- : [httplog] Connecting: sg-drinks-party.myshopify.com:443
D, [2017-04-11T00:22:07.884446 #88425] DEBUG -- : [httplog] Sending: POST http://sg-drinks-party.myshopify.com:443/admin/oauth/access_token
D, [2017-04-11T00:22:07.884557 #88425] DEBUG -- : [httplog] Header: user-agent: Faraday v0.9.2
D, [2017-04-11T00:22:07.884586 #88425] DEBUG -- : [httplog] Header: content-type: application/x-www-form-urlencoded
D, [2017-04-11T00:22:07.884610 #88425] DEBUG -- : [httplog] Header: accept-encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3
D, [2017-04-11T00:22:07.884632 #88425] DEBUG -- : [httplog] Header: accept: */*
D, [2017-04-11T00:22:07.884653 #88425] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:22:07.884701 #88425] DEBUG -- : [httplog] Data: client_id=ca39e1ad3ef61cb46d61311cc8ca5cbf&client_secret=e334c3f009badf61e79db743a64faeaa&code=9062b0bdfda3cd48e3525ea7953d1067&grant_type=authorization_code&redirect_uri=https%3A%2F%2F5b85dee9.ngrok.io%2Fauth%2Fshopify%2Fcallback
D, [2017-04-11T00:22:08.294423 #88425] DEBUG -- : [httplog] Status: 200
D, [2017-04-11T00:22:08.294527 #88425] DEBUG -- : [httplog] Benchmark: 0.409709 seconds
D, [2017-04-11T00:22:08.294561 #88425] DEBUG -- : [httplog] Header: server: nginx
D, [2017-04-11T00:22:08.294581 #88425] DEBUG -- : [httplog] Header: date: Mon, 10 Apr 2017 16:22:08 GMT
D, [2017-04-11T00:22:08.294597 #88425] DEBUG -- : [httplog] Header: content-type: application/json; charset=utf-8
D, [2017-04-11T00:22:08.294614 #88425] DEBUG -- : [httplog] Header: transfer-encoding: chunked
D, [2017-04-11T00:22:08.294630 #88425] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:22:08.294649 #88425] DEBUG -- : [httplog] Header: vary: Accept-Encoding
D, [2017-04-11T00:22:08.294666 #88425] DEBUG -- : [httplog] Header: referrer-policy: origin-when-cross-origin
D, [2017-04-11T00:22:08.294682 #88425] DEBUG -- : [httplog] Header: x-frame-options: DENY
D, [2017-04-11T00:22:08.294697 #88425] DEBUG -- : [httplog] Header: x-shopid: 7041073
D, [2017-04-11T00:22:08.294712 #88425] DEBUG -- : [httplog] Header: x-shardid: 14
D, [2017-04-11T00:22:08.294728 #88425] DEBUG -- : [httplog] Header: cache-control: no-cache
D, [2017-04-11T00:22:08.294743 #88425] DEBUG -- : [httplog] Header: set-cookie: _secure_admin_session_id=4306a28fa6a88ccead00f74758ebb130; path=/admin; secure; HttpOnly, request_method=POST; path=/
D, [2017-04-11T00:22:08.294762 #88425] DEBUG -- : [httplog] Header: x-request-id: 34fa51e0-c815-44f7-bae9-fd76f6f0ede6
D, [2017-04-11T00:22:08.294780 #88425] DEBUG -- : [httplog] Header: content-security-policy: default-src 'self' data: blob: 'unsafe-inline' 'unsafe-eval' https://* shopify-pos://*; block-all-mixed-content; child-src 'self' https://* shopify-pos://*; connect-src 'self' wss://* https://*; script-src https://cdn.shopify.com https://checkout.shopifycs.com https://js-agent.newrelic.com https://bam.nr-data.net https://dme0ih8comzn4.cloudfront.net https://api.stripe.com https://mpsnare.iesnare.com https://appcenter.intuit.com https://www.paypal.com https://stats.g.doubleclick.net https://www.google-analytics.com https://visitors.shopify.com https://v.shopify.com https://widget.intercom.io https://js.intercomcdn.com 'self' 'unsafe-inline' 'unsafe-eval'; upgrade-insecure-requests; report-uri /csp-report?source%5Baction%5D=access_token&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Foauth&source%5Bsection%5D=admin&source%5Buuid%5D=34fa51e0-c815-44f7-bae9-fd76f6f0ede6
D, [2017-04-11T00:22:08.294827 #88425] DEBUG -- : [httplog] Header: x-content-type-options: nosniff, nosniff
D, [2017-04-11T00:22:08.294845 #88425] DEBUG -- : [httplog] Header: x-download-options: noopen
D, [2017-04-11T00:22:08.294864 #88425] DEBUG -- : [httplog] Header: x-permitted-cross-domain-policies: none
D, [2017-04-11T00:22:08.294882 #88425] DEBUG -- : [httplog] Header: x-xss-protection: 1; mode=block; report=/xss-report?source%5Baction%5D=access_token&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Foauth&source%5Bsection%5D=admin&source%5Buuid%5D=34fa51e0-c815-44f7-bae9-fd76f6f0ede6
D, [2017-04-11T00:22:08.294900 #88425] DEBUG -- : [httplog] Header: p3p: CP="NOI DSP COR NID ADMa OPTa OUR NOR"
D, [2017-04-11T00:22:08.294916 #88425] DEBUG -- : [httplog] Header: x-dc: chi2
D, [2017-04-11T00:22:08.294974 #88425] DEBUG -- : [httplog] Response:
{"access_token":"647349fe1cc50091a236caa9369a28e6","scope":"read_products,read_orders,write_script_tags"}
D, [2017-04-11T00:22:08.310688 #88425] DEBUG -- :   Shop Load (0.1ms)  SELECT  "shops".* FROM "shops"  WHERE "shops"."name" = 'sg-drinks-party.myshopify.com' LIMIT 1
D, [2017-04-11T00:22:08.316812 #88425] DEBUG -- :    (0.1ms)  begin transaction
D, [2017-04-11T00:22:08.318000 #88425] DEBUG -- :   SQL (0.4ms)  INSERT INTO "shops" ("name", "token_encrypted") VALUES (?, ?)  [["name", "sg-drinks-party.myshopify.com"], ["token_encrypted", "Vvf0/J3Ns1FA+UlNPlRuNhdLkCOCCrELeXnH6b8k+Lq7OtLjya0wuTCsirgM\nINDp\n"]]
D, [2017-04-11T00:22:08.350258 #88425] DEBUG -- :   SQL (0.4ms)  INSERT INTO "settings" ("bar_color", "bar_text", "button_color", "button_hover_color", "button_text", "button_text_color", "shop_id", "targeted_time", "text_color", "text_font_family", "text_font_size") VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)  [["bar_color", "#eb593c"], ["bar_text", "Buy now with 20% off your first purchase."], ["button_color", "#333"], ["button_hover_color", "#0000ff"], ["button_text", "Buy Now"], ["button_text_color", "white"], ["shop_id", 33], ["targeted_time", 15], ["text_color", "#fff"], ["text_font_family", "Georgia"], ["text_font_size", "14px"]]
D, [2017-04-11T00:22:08.352769 #88425] DEBUG -- :    (2.0ms)  commit transaction
D, [2017-04-11T00:22:08.357351 #88425] DEBUG -- : [httplog] Connecting: sg-drinks-party.myshopify.com:443
D, [2017-04-11T00:22:09.317815 #88425] DEBUG -- : [httplog] Sending: POST http://sg-drinks-party.myshopify.com:443/admin/webhooks.json
D, [2017-04-11T00:22:09.317916 #88425] DEBUG -- : [httplog] Header: content-type: application/json
D, [2017-04-11T00:22:09.317950 #88425] DEBUG -- : [httplog] Header: x-shopify-access-token: 647349fe1cc50091a236caa9369a28e6
D, [2017-04-11T00:22:09.317984 #88425] DEBUG -- : [httplog] Header: accept-encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3
D, [2017-04-11T00:22:09.318080 #88425] DEBUG -- : [httplog] Header: accept: */*
D, [2017-04-11T00:22:09.318122 #88425] DEBUG -- : [httplog] Header: user-agent: Ruby
D, [2017-04-11T00:22:09.318149 #88425] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:22:09.318220 #88425] DEBUG -- : [httplog] Data: {"webhook":{"topic":"app/uninstalled","address":"https://5b85dee9.ngrok.io/uninstall","format":"json"}}
D, [2017-04-11T00:22:09.729715 #88425] DEBUG -- : [httplog] Status: 201
D, [2017-04-11T00:22:09.729788 #88425] DEBUG -- : [httplog] Benchmark: 0.411423 seconds
D, [2017-04-11T00:22:09.729822 #88425] DEBUG -- : [httplog] Header: server: nginx
D, [2017-04-11T00:22:09.729842 #88425] DEBUG -- : [httplog] Header: date: Mon, 10 Apr 2017 16:22:09 GMT
D, [2017-04-11T00:22:09.729860 #88425] DEBUG -- : [httplog] Header: content-type: application/json; charset=utf-8
D, [2017-04-11T00:22:09.729878 #88425] DEBUG -- : [httplog] Header: transfer-encoding: chunked
D, [2017-04-11T00:22:09.729895 #88425] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:22:09.729913 #88425] DEBUG -- : [httplog] Header: referrer-policy: origin-when-cross-origin
D, [2017-04-11T00:22:09.729932 #88425] DEBUG -- : [httplog] Header: x-frame-options: DENY
D, [2017-04-11T00:22:09.729949 #88425] DEBUG -- : [httplog] Header: x-shopid: 7041073
D, [2017-04-11T00:22:09.730075 #88425] DEBUG -- : [httplog] Header: x-shardid: 14
D, [2017-04-11T00:22:09.730094 #88425] DEBUG -- : [httplog] Header: x-shopify-shop-api-call-limit: 1/40
D, [2017-04-11T00:22:09.730113 #88425] DEBUG -- : [httplog] Header: http_x_shopify_shop_api_call_limit: 1/40
D, [2017-04-11T00:22:09.730130 #88425] DEBUG -- : [httplog] Header: x-stats-userid: 0
D, [2017-04-11T00:22:09.730147 #88425] DEBUG -- : [httplog] Header: x-stats-apiclientid: 1558121
D, [2017-04-11T00:22:09.730164 #88425] DEBUG -- : [httplog] Header: x-stats-apipermissionid: 47770759
D, [2017-04-11T00:22:09.730182 #88425] DEBUG -- : [httplog] Header: location: https://sg-drinks-party.myshopify.com/admin/webhooks
D, [2017-04-11T00:22:09.730199 #88425] DEBUG -- : [httplog] Header: x-request-id: ab548714-365f-44b9-b2cb-8fb7c4735298
D, [2017-04-11T00:22:09.730218 #88425] DEBUG -- : [httplog] Header: content-security-policy: default-src 'self' data: blob: 'unsafe-inline' 'unsafe-eval' https://* shopify-pos://*; block-all-mixed-content; child-src 'self' https://* shopify-pos://*; connect-src 'self' wss://* https://*; script-src https://cdn.shopify.com https://checkout.shopifycs.com https://js-agent.newrelic.com https://bam.nr-data.net https://dme0ih8comzn4.cloudfront.net https://api.stripe.com https://mpsnare.iesnare.com https://appcenter.intuit.com https://www.paypal.com https://stats.g.doubleclick.net https://www.google-analytics.com https://visitors.shopify.com https://v.shopify.com https://widget.intercom.io https://js.intercomcdn.com 'self' 'unsafe-inline' 'unsafe-eval'; upgrade-insecure-requests; report-uri /csp-report?source%5Baction%5D=create&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Fwebhooks&source%5Bsection%5D=admin&source%5Buuid%5D=ab548714-365f-44b9-b2cb-8fb7c4735298
D, [2017-04-11T00:22:09.730254 #88425] DEBUG -- : [httplog] Header: x-content-type-options: nosniff, nosniff
D, [2017-04-11T00:22:09.730274 #88425] DEBUG -- : [httplog] Header: x-download-options: noopen
D, [2017-04-11T00:22:09.730292 #88425] DEBUG -- : [httplog] Header: x-permitted-cross-domain-policies: none
D, [2017-04-11T00:22:09.730310 #88425] DEBUG -- : [httplog] Header: x-xss-protection: 1; mode=block; report=/xss-report?source%5Baction%5D=create&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Fwebhooks&source%5Bsection%5D=admin&source%5Buuid%5D=ab548714-365f-44b9-b2cb-8fb7c4735298
D, [2017-04-11T00:22:09.730328 #88425] DEBUG -- : [httplog] Header: p3p: CP="NOI DSP COR NID ADMa OPTa OUR NOR"
D, [2017-04-11T00:22:09.730346 #88425] DEBUG -- : [httplog] Header: x-dc: chi2
D, [2017-04-11T00:22:09.730406 #88425] DEBUG -- : [httplog] Response:
{"webhook":{"id":465733903,"address":"https:\/\/5b85dee9.ngrok.io\/uninstall","topic":"app\/uninstalled","created_at":"2017-04-10T12:22:09-04:00","updated_at":"2017-04-10T12:22:09-04:00","format":"json","fields":[],"metafield_namespaces":[]}}
D, [2017-04-11T00:22:09.731769 #88425] DEBUG -- : [httplog] Connecting: sg-drinks-party.myshopify.com:443
D, [2017-04-11T00:22:10.473832 #88425] DEBUG -- : [httplog] Sending: POST http://sg-drinks-party.myshopify.com:443/admin/script_tags.json
D, [2017-04-11T00:22:10.473924 #88425] DEBUG -- : [httplog] Header: content-type: application/json
D, [2017-04-11T00:22:10.473951 #88425] DEBUG -- : [httplog] Header: x-shopify-access-token: 647349fe1cc50091a236caa9369a28e6
D, [2017-04-11T00:22:10.473975 #88425] DEBUG -- : [httplog] Header: accept-encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3
D, [2017-04-11T00:22:10.473997 #88425] DEBUG -- : [httplog] Header: accept: */*
D, [2017-04-11T00:22:10.474018 #88425] DEBUG -- : [httplog] Header: user-agent: Ruby
D, [2017-04-11T00:22:10.474038 #88425] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:22:10.474095 #88425] DEBUG -- : [httplog] Data: {"script_tag":{"event":"onload","src":"https://5b85dee9.ngrok.io/load_first_order.js"}}
D, [2017-04-11T00:22:10.774453 #88425] DEBUG -- : [httplog] Status: 201
D, [2017-04-11T00:22:10.774526 #88425] DEBUG -- : [httplog] Benchmark: 0.300312 seconds
D, [2017-04-11T00:22:10.774559 #88425] DEBUG -- : [httplog] Header: server: nginx
D, [2017-04-11T00:22:10.774579 #88425] DEBUG -- : [httplog] Header: date: Mon, 10 Apr 2017 16:22:10 GMT
D, [2017-04-11T00:22:10.774597 #88425] DEBUG -- : [httplog] Header: content-type: application/json; charset=utf-8
D, [2017-04-11T00:22:10.774618 #88425] DEBUG -- : [httplog] Header: transfer-encoding: chunked
D, [2017-04-11T00:22:10.774639 #88425] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:22:10.774657 #88425] DEBUG -- : [httplog] Header: referrer-policy: origin-when-cross-origin
D, [2017-04-11T00:22:10.774674 #88425] DEBUG -- : [httplog] Header: x-frame-options: DENY
D, [2017-04-11T00:22:10.774691 #88425] DEBUG -- : [httplog] Header: x-shopid: 7041073
D, [2017-04-11T00:22:10.774708 #88425] DEBUG -- : [httplog] Header: x-shardid: 14
D, [2017-04-11T00:22:10.774725 #88425] DEBUG -- : [httplog] Header: x-shopify-shop-api-call-limit: 1/40
D, [2017-04-11T00:22:10.774742 #88425] DEBUG -- : [httplog] Header: http_x_shopify_shop_api_call_limit: 1/40
D, [2017-04-11T00:22:10.774763 #88425] DEBUG -- : [httplog] Header: x-stats-userid: 0
D, [2017-04-11T00:22:10.774780 #88425] DEBUG -- : [httplog] Header: x-stats-apiclientid: 1558121
D, [2017-04-11T00:22:10.774797 #88425] DEBUG -- : [httplog] Header: x-stats-apipermissionid: 47770759
D, [2017-04-11T00:22:10.774814 #88425] DEBUG -- : [httplog] Header: location: https://sg-drinks-party.myshopify.com/admin/script_tags/100186959
D, [2017-04-11T00:22:10.774832 #88425] DEBUG -- : [httplog] Header: x-request-id: afbc303b-701e-4b10-8933-bce21f2fb9ed
D, [2017-04-11T00:22:10.774853 #88425] DEBUG -- : [httplog] Header: content-security-policy: default-src 'self' data: blob: 'unsafe-inline' 'unsafe-eval' https://* shopify-pos://*; block-all-mixed-content; child-src 'self' https://* shopify-pos://*; connect-src 'self' wss://* https://*; script-src https://cdn.shopify.com https://checkout.shopifycs.com https://js-agent.newrelic.com https://bam.nr-data.net https://dme0ih8comzn4.cloudfront.net https://api.stripe.com https://mpsnare.iesnare.com https://appcenter.intuit.com https://www.paypal.com https://stats.g.doubleclick.net https://www.google-analytics.com https://visitors.shopify.com https://v.shopify.com https://widget.intercom.io https://js.intercomcdn.com 'self' 'unsafe-inline' 'unsafe-eval'; upgrade-insecure-requests; report-uri /csp-report?source%5Baction%5D=create&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Fscript_tags&source%5Bsection%5D=admin&source%5Buuid%5D=afbc303b-701e-4b10-8933-bce21f2fb9ed
D, [2017-04-11T00:22:10.774934 #88425] DEBUG -- : [httplog] Header: x-content-type-options: nosniff, nosniff
D, [2017-04-11T00:22:10.774969 #88425] DEBUG -- : [httplog] Header: x-download-options: noopen
D, [2017-04-11T00:22:10.774990 #88425] DEBUG -- : [httplog] Header: x-permitted-cross-domain-policies: none
D, [2017-04-11T00:22:10.775008 #88425] DEBUG -- : [httplog] Header: x-xss-protection: 1; mode=block; report=/xss-report?source%5Baction%5D=create&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Fscript_tags&source%5Bsection%5D=admin&source%5Buuid%5D=afbc303b-701e-4b10-8933-bce21f2fb9ed
D, [2017-04-11T00:22:10.775028 #88425] DEBUG -- : [httplog] Header: p3p: CP="NOI DSP COR NID ADMa OPTa OUR NOR"
D, [2017-04-11T00:22:10.775056 #88425] DEBUG -- : [httplog] Header: x-dc: chi2
D, [2017-04-11T00:22:10.775228 #88425] DEBUG -- : [httplog] Response:
{"script_tag":{"id":100186959,"src":"https:\/\/5b85dee9.ngrok.io\/load_first_order.js","event":"onload","created_at":"2017-04-10T12:22:10-04:00","updated_at":"2017-04-10T12:22:10-04:00","display_scope":"all"}}
D, [2017-04-11T00:22:11.420281 #88425] DEBUG -- : [httplog] Connecting: sg-drinks-party.myshopify.com:443
D, [2017-04-11T00:22:12.354412 #88425] DEBUG -- : [httplog] Sending: GET http://sg-drinks-party.myshopify.com:443/admin/products.json?limit=10
D, [2017-04-11T00:22:12.354512 #88425] DEBUG -- : [httplog] Header: accept: application/json
D, [2017-04-11T00:22:12.354545 #88425] DEBUG -- : [httplog] Header: x-shopify-access-token: 647349fe1cc50091a236caa9369a28e6
D, [2017-04-11T00:22:12.354586 #88425] DEBUG -- : [httplog] Header: accept-encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3
D, [2017-04-11T00:22:12.354633 #88425] DEBUG -- : [httplog] Header: user-agent: Ruby
D, [2017-04-11T00:22:12.354681 #88425] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:22:12.354765 #88425] DEBUG -- : [httplog] Data: 
D, [2017-04-11T00:22:12.702019 #88425] DEBUG -- : [httplog] Status: 200
D, [2017-04-11T00:22:12.702126 #88425] DEBUG -- : [httplog] Benchmark: 0.347194 seconds
D, [2017-04-11T00:22:12.702218 #88425] DEBUG -- : [httplog] Header: server: nginx
D, [2017-04-11T00:22:12.702246 #88425] DEBUG -- : [httplog] Header: date: Mon, 10 Apr 2017 16:22:12 GMT
D, [2017-04-11T00:22:12.702281 #88425] DEBUG -- : [httplog] Header: content-type: application/json; charset=utf-8
D, [2017-04-11T00:22:12.702321 #88425] DEBUG -- : [httplog] Header: transfer-encoding: chunked
D, [2017-04-11T00:22:12.702355 #88425] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-11T00:22:12.702380 #88425] DEBUG -- : [httplog] Header: vary: Accept-Encoding
D, [2017-04-11T00:22:12.702405 #88425] DEBUG -- : [httplog] Header: referrer-policy: origin-when-cross-origin
D, [2017-04-11T00:22:12.702429 #88425] DEBUG -- : [httplog] Header: x-frame-options: DENY
D, [2017-04-11T00:22:12.702453 #88425] DEBUG -- : [httplog] Header: x-shopid: 7041073
D, [2017-04-11T00:22:12.702477 #88425] DEBUG -- : [httplog] Header: x-shardid: 14
D, [2017-04-11T00:22:12.702501 #88425] DEBUG -- : [httplog] Header: x-shopify-shop-api-call-limit: 1/40
D, [2017-04-11T00:22:12.702530 #88425] DEBUG -- : [httplog] Header: http_x_shopify_shop_api_call_limit: 1/40
D, [2017-04-11T00:22:12.702556 #88425] DEBUG -- : [httplog] Header: x-stats-userid: 0
D, [2017-04-11T00:22:12.702580 #88425] DEBUG -- : [httplog] Header: x-stats-apiclientid: 1558121
D, [2017-04-11T00:22:12.702604 #88425] DEBUG -- : [httplog] Header: x-stats-apipermissionid: 47770759
D, [2017-04-11T00:22:12.702628 #88425] DEBUG -- : [httplog] Header: x-request-id: ffcfe33b-9575-41d6-979f-f6d0e4f81d88
D, [2017-04-11T00:22:12.702658 #88425] DEBUG -- : [httplog] Header: content-security-policy: default-src 'self' data: blob: 'unsafe-inline' 'unsafe-eval' https://* shopify-pos://*; block-all-mixed-content; child-src 'self' https://* shopify-pos://*; connect-src 'self' wss://* https://*; script-src https://cdn.shopify.com https://checkout.shopifycs.com https://js-agent.newrelic.com https://bam.nr-data.net https://dme0ih8comzn4.cloudfront.net https://api.stripe.com https://mpsnare.iesnare.com https://appcenter.intuit.com https://www.paypal.com https://stats.g.doubleclick.net https://www.google-analytics.com https://visitors.shopify.com https://v.shopify.com https://widget.intercom.io https://js.intercomcdn.com 'self' 'unsafe-inline' 'unsafe-eval'; upgrade-insecure-requests; report-uri /csp-report?source%5Baction%5D=index&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Fproducts&source%5Bsection%5D=admin&source%5Buuid%5D=ffcfe33b-9575-41d6-979f-f6d0e4f81d88
D, [2017-04-11T00:22:12.702689 #88425] DEBUG -- : [httplog] Header: x-content-type-options: nosniff, nosniff
D, [2017-04-11T00:22:12.702714 #88425] DEBUG -- : [httplog] Header: x-download-options: noopen
D, [2017-04-11T00:22:12.702744 #88425] DEBUG -- : [httplog] Header: x-permitted-cross-domain-policies: none
D, [2017-04-11T00:22:12.702771 #88425] DEBUG -- : [httplog] Header: x-xss-protection: 1; mode=block; report=/xss-report?source%5Baction%5D=index&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Fproducts&source%5Bsection%5D=admin&source%5Buuid%5D=ffcfe33b-9575-41d6-979f-f6d0e4f81d88
D, [2017-04-11T00:22:12.702803 #88425] DEBUG -- : [httplog] Header: p3p: CP="NOI DSP COR NID ADMa OPTa OUR NOR"
D, [2017-04-11T00:22:12.702828 #88425] DEBUG -- : [httplog] Header: x-dc: chi2
D, [2017-04-11T00:22:12.702917 #88425] DEBUG -- : [httplog] Response:


### CSRF

I, [2017-04-12T12:11:45.109332 #49327]  INFO -- omniauth: (shopify) Setup endpoint detected, running now.
I, [2017-04-12T12:11:45.109835 #49327]  INFO -- omniauth: (shopify) Request phase initiated.
I, [2017-04-12T12:11:46.232657 #49327]  INFO -- omniauth: (shopify) Setup endpoint detected, running now.
I, [2017-04-12T12:11:46.233137 #49327]  INFO -- omniauth: (shopify) Callback phase initiated.
D, [2017-04-12T12:11:46.691284 #49327] DEBUG -- : [httplog] Connecting: sg-drinks-party.myshopify.com:443
D, [2017-04-12T12:11:48.199908 #49327] DEBUG -- : [httplog] Sending: POST http://sg-drinks-party.myshopify.com:443/admin/oauth/access_token
D, [2017-04-12T12:11:48.200007 #49327] DEBUG -- : [httplog] Header: user-agent: Faraday v0.9.2
D, [2017-04-12T12:11:48.200050 #49327] DEBUG -- : [httplog] Header: content-type: application/x-www-form-urlencoded
D, [2017-04-12T12:11:48.200109 #49327] DEBUG -- : [httplog] Header: accept-encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3
D, [2017-04-12T12:11:48.200173 #49327] DEBUG -- : [httplog] Header: accept: */*
D, [2017-04-12T12:11:48.200217 #49327] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-12T12:11:48.200285 #49327] DEBUG -- : [httplog] Data: client_id=ca39e1ad3ef61cb46d61311cc8ca5cbf&client_secret=e334c3f009badf61e79db743a64faeaa&code=dc1d1cde59bd66c2a8b9e6fbdca1dd85&grant_type=authorization_code&redirect_uri=https%3A%2F%2F5b85dee9.ngrok.io%2Fauth%2Fshopify%2Fcallback
D, [2017-04-12T12:11:48.610267 #49327] DEBUG -- : [httplog] Status: 200
D, [2017-04-12T12:11:48.610340 #49327] DEBUG -- : [httplog] Benchmark: 0.409907 seconds
D, [2017-04-12T12:11:48.610375 #49327] DEBUG -- : [httplog] Header: server: nginx
D, [2017-04-12T12:11:48.610396 #49327] DEBUG -- : [httplog] Header: date: Wed, 12 Apr 2017 04:11:48 GMT
D, [2017-04-12T12:11:48.610416 #49327] DEBUG -- : [httplog] Header: content-type: application/json; charset=utf-8
D, [2017-04-12T12:11:48.610435 #49327] DEBUG -- : [httplog] Header: transfer-encoding: chunked
D, [2017-04-12T12:11:48.610453 #49327] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-12T12:11:48.610471 #49327] DEBUG -- : [httplog] Header: vary: Accept-Encoding
D, [2017-04-12T12:11:48.610496 #49327] DEBUG -- : [httplog] Header: referrer-policy: origin-when-cross-origin
D, [2017-04-12T12:11:48.610519 #49327] DEBUG -- : [httplog] Header: x-frame-options: DENY
D, [2017-04-12T12:11:48.610551 #49327] DEBUG -- : [httplog] Header: x-shopid: 7041073
D, [2017-04-12T12:11:48.610584 #49327] DEBUG -- : [httplog] Header: x-shardid: 14
D, [2017-04-12T12:11:48.610605 #49327] DEBUG -- : [httplog] Header: cache-control: no-cache
D, [2017-04-12T12:11:48.610623 #49327] DEBUG -- : [httplog] Header: set-cookie: _secure_admin_session_id=942aec4a42f43aceae49df3858eda904; path=/admin; secure; HttpOnly, request_method=POST; path=/
D, [2017-04-12T12:11:48.610655 #49327] DEBUG -- : [httplog] Header: x-request-id: 41ba9519-48a8-4fb0-a5bf-8474c13e875f
D, [2017-04-12T12:11:48.610684 #49327] DEBUG -- : [httplog] Header: content-security-policy: default-src 'self' data: blob: 'unsafe-inline' 'unsafe-eval' https://* shopify-pos://*; block-all-mixed-content; child-src 'self' https://* shopify-pos://*; connect-src 'self' wss://* https://*; script-src https://cdn.shopify.com https://checkout.shopifycs.com https://js-agent.newrelic.com https://bam.nr-data.net https://dme0ih8comzn4.cloudfront.net https://api.stripe.com https://mpsnare.iesnare.com https://appcenter.intuit.com https://www.paypal.com https://stats.g.doubleclick.net https://www.google-analytics.com https://visitors.shopify.com https://v.shopify.com https://widget.intercom.io https://js.intercomcdn.com 'self' 'unsafe-inline' 'unsafe-eval'; upgrade-insecure-requests; report-uri /csp-report?source%5Baction%5D=access_token&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Foauth&source%5Bsection%5D=admin&source%5Buuid%5D=41ba9519-48a8-4fb0-a5bf-8474c13e875f
D, [2017-04-12T12:11:48.610746 #49327] DEBUG -- : [httplog] Header: x-content-type-options: nosniff, nosniff
D, [2017-04-12T12:11:48.610782 #49327] DEBUG -- : [httplog] Header: x-download-options: noopen
D, [2017-04-12T12:11:48.610804 #49327] DEBUG -- : [httplog] Header: x-permitted-cross-domain-policies: none
D, [2017-04-12T12:11:48.610825 #49327] DEBUG -- : [httplog] Header: x-xss-protection: 1; mode=block; report=/xss-report?source%5Baction%5D=access_token&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Foauth&source%5Bsection%5D=admin&source%5Buuid%5D=41ba9519-48a8-4fb0-a5bf-8474c13e875f
D, [2017-04-12T12:11:48.610844 #49327] DEBUG -- : [httplog] Header: p3p: CP="NOI DSP COR NID ADMa OPTa OUR NOR"
D, [2017-04-12T12:11:48.610867 #49327] DEBUG -- : [httplog] Header: x-dc: chi2
D, [2017-04-12T12:11:48.610950 #49327] DEBUG -- : [httplog] Response:
{"access_token":"647349fe1cc50091a236caa9369a28e6","scope":"read_products,read_orders,write_script_tags"}
I, [2017-04-12T12:11:48.618336 #49327]  INFO -- omniauth: (shopify) Setup endpoint detected, running now.
I, [2017-04-12T12:11:48.618714 #49327]  INFO -- omniauth: (shopify) Callback phase initiated.
D, [2017-04-12T12:11:48.633551 #49327] DEBUG -- : [httplog] Connecting: sg-drinks-party.myshopify.com:443
D, [2017-04-12T12:11:49.428246 #49327] DEBUG -- : [httplog] Sending: POST http://sg-drinks-party.myshopify.com:443/admin/oauth/access_token
D, [2017-04-12T12:11:49.428322 #49327] DEBUG -- : [httplog] Header: user-agent: Faraday v0.9.2
D, [2017-04-12T12:11:49.428343 #49327] DEBUG -- : [httplog] Header: content-type: application/x-www-form-urlencoded
D, [2017-04-12T12:11:49.428361 #49327] DEBUG -- : [httplog] Header: accept-encoding: gzip;q=1.0,deflate;q=0.6,identity;q=0.3
D, [2017-04-12T12:11:49.428379 #49327] DEBUG -- : [httplog] Header: accept: */*
D, [2017-04-12T12:11:49.428395 #49327] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-12T12:11:49.428686 #49327] DEBUG -- : [httplog] Data: client_id=ca39e1ad3ef61cb46d61311cc8ca5cbf&client_secret=e334c3f009badf61e79db743a64faeaa&code=dc1d1cde59bd66c2a8b9e6fbdca1dd85&grant_type=authorization_code&redirect_uri=https%3A%2F%2F5b85dee9.ngrok.io%2Fauth%2Fshopify%2Fcallback
D, [2017-04-12T12:11:49.712923 #49327] DEBUG -- : [httplog] Status: 400
D, [2017-04-12T12:11:49.713028 #49327] DEBUG -- : [httplog] Benchmark: 0.284179 seconds
D, [2017-04-12T12:11:49.713086 #49327] DEBUG -- : [httplog] Header: server: nginx
D, [2017-04-12T12:11:49.713122 #49327] DEBUG -- : [httplog] Header: date: Wed, 12 Apr 2017 04:11:49 GMT
D, [2017-04-12T12:11:49.713155 #49327] DEBUG -- : [httplog] Header: content-type: text/html; charset=utf-8
D, [2017-04-12T12:11:49.713188 #49327] DEBUG -- : [httplog] Header: transfer-encoding: chunked
D, [2017-04-12T12:11:49.713343 #49327] DEBUG -- : [httplog] Header: connection: close
D, [2017-04-12T12:11:49.713379 #49327] DEBUG -- : [httplog] Header: referrer-policy: origin-when-cross-origin
D, [2017-04-12T12:11:49.713430 #49327] DEBUG -- : [httplog] Header: x-frame-options: DENY
D, [2017-04-12T12:11:49.713535 #49327] DEBUG -- : [httplog] Header: x-shopid: 7041073
D, [2017-04-12T12:11:49.713609 #49327] DEBUG -- : [httplog] Header: x-shardid: 14
D, [2017-04-12T12:11:49.713660 #49327] DEBUG -- : [httplog] Header: cache-control: no-cache
D, [2017-04-12T12:11:49.713696 #49327] DEBUG -- : [httplog] Header: set-cookie: _secure_admin_session_id=a9648cb9979c8cbef3b8b82058eda905; path=/admin; secure; HttpOnly, request_method=POST; path=/
D, [2017-04-12T12:11:49.713731 #49327] DEBUG -- : [httplog] Header: x-request-id: bdb4de0d-770f-4a05-9cc3-7d7186912af0
D, [2017-04-12T12:11:49.713779 #49327] DEBUG -- : [httplog] Header: content-security-policy: default-src 'self' data: blob: 'unsafe-inline' 'unsafe-eval' https://* shopify-pos://*; block-all-mixed-content; child-src 'self' https://* shopify-pos://*; connect-src 'self' wss://* https://*; script-src https://cdn.shopify.com https://checkout.shopifycs.com https://js-agent.newrelic.com https://bam.nr-data.net https://dme0ih8comzn4.cloudfront.net https://api.stripe.com https://mpsnare.iesnare.com https://appcenter.intuit.com https://www.paypal.com https://stats.g.doubleclick.net https://www.google-analytics.com https://visitors.shopify.com https://v.shopify.com https://widget.intercom.io https://js.intercomcdn.com 'self' 'unsafe-inline' 'unsafe-eval'; upgrade-insecure-requests; report-uri /csp-report?source%5Baction%5D=access_token&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Foauth&source%5Bsection%5D=admin&source%5Buuid%5D=bdb4de0d-770f-4a05-9cc3-7d7186912af0
D, [2017-04-12T12:11:49.713938 #49327] DEBUG -- : [httplog] Header: x-content-type-options: nosniff
D, [2017-04-12T12:11:49.714002 #49327] DEBUG -- : [httplog] Header: x-download-options: noopen
D, [2017-04-12T12:11:49.714079 #49327] DEBUG -- : [httplog] Header: x-permitted-cross-domain-policies: none
D, [2017-04-12T12:11:49.714122 #49327] DEBUG -- : [httplog] Header: x-xss-protection: 1; mode=block; report=/xss-report?source%5Baction%5D=access_token&source%5Bapp%5D=Shopify&source%5Bcontroller%5D=admin%2Foauth&source%5Bsection%5D=admin&source%5Buuid%5D=bdb4de0d-770f-4a05-9cc3-7d7186912af0
D, [2017-04-12T12:11:49.714158 #49327] DEBUG -- : [httplog] Header: x-dc: chi2
D, [2017-04-12T12:11:49.714315 #49327] DEBUG -- : [httplog] Response:
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>400 - Oauth error invalid_request</title>
  <meta name="referrer" content="never" />
  <style type="text/css">

    * { border:0; margin:0; padding:0; -moz-box-sizing:border-box; -webkit-box-sizing:border-box; box-sizing:border-box; }
    html,body { height:100%; border:0; margin:0; padding:0; font-family:"Helvetica Neue", Helvetica, Arial, sans-serif; font-weight:300; background:#fff; }
    body { min-height:100%; font-size:16px; line-height:22px; color:#6c6c6c; }
    a { color:#479ccf; }

    h1,h2,h3,h4,h5,h6 { text-align:left; margin:0 0 20px 0; color:#31373D; font-weight:700; }
    h1 { font-size:28px; line-height:48px; margin-bottom:7px; }
    h2 { font-size:20px; font-weight:300; line-height:30px; color:#6c6c6c; }
    h3 { font-size:17px; line-height:30px; position:relative; padding-bottom:18px; margin-bottom:22px; font-weight:400; }
    h3:after { content:""; position:absolute; left:0; bottom:0; height:2px; width:76px; background:#EAEAEA; }
    h4 { font-size:14px; margin-bottom:3px; }

    img { max-width:100%; }

    li { margin-bottom:5px; }

    .next-icon {
      display: inline-block;
      vertical-align: middle;
      background-size: contain;
      background-position: center;
      background-repeat: no-repeat;
      position: relative;
      top: 0.15em;
      fill: currentColor;
      margin-bottom: 5px;
    }

    .next-icon--color-yellow {
      fill: #E9BE33;
    }

    .next-icon--size-40 {
      width: 40px;
      height: 40px;
    }

    .wrapper { min-width:320px; max-width:650px; margin:0 auto; padding:20px; }

    .hero { margin-bottom:30px; }

    .content--block { position:relative; margin-bottom:50px; }
    .content--desc { margin-bottom:32px; position:relative; }
    .content--desc-large { font-size:20px; line-height:28px; }

    .request-id { padding-top:100px; font-size:13px; color:#ccc; }

    @media all and (min-width:500px) {
      body { padding:60px 0; }
      .wrapper { padding:20px 20px 20px 100px; }
      .ico svg { width:40px; height:40px; margin-bottom:0; }
      .hero { margin-bottom:70px; }
      .content--block { margin-bottom:80px; }
      .content--desc .next-icon { position:absolute; left:-70px; top:-7px; }
    }

    @media all and (min-width:900px) {
      .wrapper { padding:20px; }
    }

  </style>
</head>

<body class="status-error status-code-500">

  <div class="wrapper">
    <div class="hero">
      <svg width="160px" height="176px" viewBox="0 0 160 176" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns" role="img" aria-labelledby="hero__logo">
        <title id="hero__logo">Shopify logo</title>
        <defs></defs>
        <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
          <g id="user-action-required-2" sketch:type="MSArtboardGroup" transform="translate(-297.000000, -81.000000)" stroke="#979797" stroke-dasharray="5">
            <g id="shopify-bag-outline" sketch:type="MSLayerGroup" transform="translate(298.000000, 82.000000)">
              <path d="M138.817711,32.9976853 C138.371951,32.7161619 137.887187,32.6604147 137.887187,32.6604147 L123.887534,31.6151547 L113.584904,21.3716063 C113.200436,21.0733588 112.749104,20.9005425 112.286628,20.8085596 L104.647414,174.188624 L158.389365,162.551396 L139.402771,34.070819 C139.402771,34.070819 139.257899,33.2847834 138.817711,32.9976853" id="Fill-1" sketch:type="MSShapeGroup"></path>
              <path d="M104.652986,20.8643068 L99.4292354,22.483763 C97.1196409,15.7244147 93.9714603,10.8994944 90.0264836,8.10655958 C87.070537,6.01325214 83.8137024,5.13244635 80.3144857,5.408395 C79.5984836,4.46347992 78.8323334,3.59939829 77.9742453,2.90534562 C74.1100625,-0.222072416 69.1286936,-0.707073074 63.1694384,1.45591837 C45.436545,7.89750757 37.8224056,30.7622225 35.033619,42.4328993 L19.170132,47.3470151 C19.170132,47.3470151 15.5009693,48.3894878 14.6400951,49.4235984 C13.6956409,50.558054 13.5117649,53.615788 13.5117649,53.615788 L0.300550361,155.58857 L99.4988854,174.183049 L107.138099,20.7778986 C106.043201,20.5632719 104.926014,20.8001975 104.652986,20.8643068 L104.652986,20.8643068 Z M87.081681,12.7586636 C90.1602116,14.9383792 92.375082,19.3061725 93.9491723,24.1812653 L85.6218167,26.7595734 C85.6134587,26.1630783 85.6106727,25.5693706 85.5855987,24.9533641 C85.3850067,19.5932706 84.6550745,15.0777472 83.4153043,11.4207307 C84.7470126,11.5628861 85.9756388,11.9754154 87.081681,12.7586636 L87.081681,12.7586636 Z M62.4868683,33.9286636 C64.7825327,25.0620711 69.1621256,16.0561106 77.4671932,12.5273127 C79.1972995,17.0205372 79.6987796,23.1471547 79.6653476,28.6048058 L62.4868683,33.9286636 L62.4868683,33.9286636 Z M65.2115768,7.08638578 C68.8083035,5.77911389 71.558086,5.87109677 73.6531584,7.23969059 C62.5453743,12.3544964 57.6503714,25.0955194 55.513509,36.0888677 L41.7952423,40.3395918 C44.9099909,29.1929388 51.7774822,11.964266 65.2115768,7.08638578 L65.2115768,7.08638578 Z M74.6366166,82.0524358 C73.8509645,81.6705675 72.9204403,81.2608255 71.8673321,80.8705951 C70.8225819,80.4831521 69.6608197,80.1124332 68.4015474,79.8058236 C67.1506332,79.499214 65.8077809,79.2511389 64.3897067,79.1034088 C62.9883484,78.9612535 61.5173401,78.9138683 59.9906118,79.0030639 C58.5892535,79.0866847 57.3188373,79.3347597 56.2016511,79.7333522 C55.0956089,80.1291573 54.1344387,80.6726926 53.3432145,81.3472337 C52.5547764,82.0217749 51.9307123,82.8245346 51.4905242,83.7499381 C51.0531221,84.669767 50.79681,85.7122396 50.746662,86.8634194 C50.710444,87.7163515 50.8413861,88.5358354 51.1422741,89.3330204 C51.4431622,90.1302054 51.9112103,90.9106662 52.5519904,91.6883397 C53.1927705,92.4688005 54.0062827,93.246474 54.9925269,94.0380843 C55.984343,94.8352693 57.1572493,95.6519658 58.5112455,96.4965359 C60.4057259,97.7090375 62.3419963,99.0804187 64.1863286,100.65249 C66.055735,102.24686 67.8248453,104.044707 69.3460016,106.093417 C70.8838739,108.167213 72.1626481,110.489084 73.0263083,113.095265 C73.8955405,115.718171 74.3357286,118.614238 74.1964285,121.805766 C73.9707625,127.023704 72.8285023,131.522503 70.9368079,135.254778 C69.0701876,138.936881 66.4931371,141.832948 63.3895325,143.929043 C60.3555779,145.98054 56.8396452,147.254363 53.0144665,147.76445 C49.3035138,148.263388 45.319533,148.040399 41.2157542,147.134507 C41.1823222,147.126145 41.1488902,147.117783 41.1182442,147.112208 C41.0848122,147.106633 41.0541662,147.098271 41.0207342,147.089909 C40.9873022,147.084334 40.9538702,147.075972 40.9232242,147.06761 C40.8897921,147.059248 40.8591461,147.053673 40.8257141,147.045311 C38.9005878,146.579822 37.0423254,145.972178 35.2955031,145.266976 C33.5765407,144.570136 31.9606604,143.778525 30.4924382,142.922806 C29.0409319,142.075448 27.7287256,141.169556 26.5920374,140.230216 C25.4664932,139.302025 24.510895,138.340386 23.7614609,137.378747 L28.2914977,122.340939 C29.0548619,122.987606 29.9909581,123.720682 31.0552103,124.467695 C32.1306065,125.225856 33.3397307,126.000743 34.6352209,126.725456 C35.9446412,127.455745 37.3432135,128.13586 38.7835757,128.687758 C40.240654,129.248017 41.7423083,129.677271 43.2300326,129.897472 C44.5422388,130.0898 45.7151451,130.050777 46.7431793,129.819426 C47.7767855,129.585288 48.6599476,129.156034 49.3843078,128.570689 C50.1086679,127.982556 50.674226,127.235543 51.0642661,126.379824 C51.4598782,125.521317 51.6827582,124.554103 51.7273342,123.519992 C51.7719102,122.483094 51.6771862,121.510305 51.4180882,120.562603 C51.1589901,119.614901 50.735518,118.700646 50.1225979,117.780818 C49.5124638,116.866564 48.7212396,115.949522 47.7210655,115.00182 C46.7320353,114.059692 45.542413,113.089691 44.1326968,112.061155 C42.4053764,110.770607 40.7783521,109.368565 39.3240598,107.846666 C37.8836976,106.341492 36.6104953,104.713673 35.5657451,102.9437 C34.5321389,101.193238 33.7186268,99.2978328 33.1920727,97.2435484 C32.6655186,95.1948387 32.4231365,92.9788874 32.5290045,90.5650336 C32.7045226,86.5289361 33.5124627,82.8078104 34.860887,79.4574036 C36.2232413,76.0735484 38.1567256,73.0353259 40.5805461,70.4207821 C43.0545146,67.7532785 46.0578231,65.5038789 49.5236078,63.7729282 C53.0869025,61.9918051 57.1656073,60.7430678 61.6789281,60.1493601 C63.7767865,59.8761988 65.7854929,59.7451929 67.6883313,59.7368308 C69.6162437,59.7284687 71.42993,59.8427505 73.1015303,60.0573772 C74.7926326,60.2720039 76.3332909,60.5869756 77.6984312,60.9716313 C79.0775015,61.3618618 80.2699097,61.8245635 81.2533679,62.3262883 L74.6366166,82.0524358 L74.6366166,82.0524358 Z" id="Fill-10" sketch:type="MSShapeGroup"></path>
          </g>
        </g>
      </g>
    </svg>
    </div>
    <div class="content">
      <div class="content--block">
        <div class="content--desc">
          <svg class="next-icon next-icon--color-yellow next-icon--size-40" role="img" aria-labelledby="content--image-alert">
            <title id="content--image-alert">Alert sign</title>
            <path d="M37.4,37.7H2.6c-0.9,0-1.8-0.5-2.3-1.3c-0.5-0.8-0.5-1.8,0-2.6L17.7,3.7c0.5-0.8,1.3-1.3,2.3-1.3 s1.8,0.5,2.3,1.3l17.4,30.1c0.5,0.8,0.5,1.8,0,2.6C39.2,37.2,38.3,37.7,37.4,37.7z M20,4.3c-0.1,0-0.4,0-0.5,0.3L2.1,34.7 c-0.2,0.3-0.1,0.5,0,0.6c0.1,0.1,0.2,0.3,0.5,0.3h34.7c0.3,0,0.5-0.2,0.5-0.3c0.1-0.1,0.2-0.3,0-0.6L20.5,4.7 C20.4,4.4,20.1,4.3,20,4.3z M20,27c-0.6,0-1-0.4-1-1V11c0-0.6,0.4-1,1-1s1,0.4,1,1v15C21,26.6,20.6,27,20,27z"></path>
            <circle cx="20" cy="31.7" r="1.8"></circle>
          </svg>
          <p class="content--desc-large">Oops, something went wrong.</p>
        </div>
      </div>
      <div class="content--block">
        <h3>What happened?</h3>
        <div class="content--desc">
          Oauth error invalid_request: The authorization code was not found or was already used
        </div>
      </div>
      <div class="content--block">
        <h3>What can I do?</h3>
        <div class="content--desc">
          <ul>
            <li>Press the back button on your browser.</li>
            <li>Return to your <a href="/admin">admin dashboard</a>.</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="request-id">Request ID: bdb4de0d-770f-4a05-9cc3-7d7186912af0</div>
  </div>
</body>
</html>

E, [2017-04-12T12:11:49.717211 #49327] ERROR -- omniauth: (shopify) Authentication failure! invalid_credentials: OAuth2::Error, <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>400 - Oauth error invalid_request</title>
  <meta name="referrer" content="never" />
  <style type="text/css">

    * { border:0; margin:0; padding:0; -moz-box-sizing:border-box; -webkit-box-sizing:border-box; box-sizing:border-box; }
    html,body { height:100%; border:0; margin:0; padding:0; font-family:"Helvetica Neue", Helvetica, Arial, sans-serif; font-weight:300; background:#fff; }
    body { min-height:100%; font-size:16px; line-height:22px; color:#6c6c6c; }
    a { color:#479ccf; }

    h1,h2,h3,h4,h5,h6 { text-align:left; margin:0 0 20px 0; color:#31373D; font-weight:700; }
    h1 { font-size:28px; line-height:48px; margin-bottom:7px; }
    h2 { font-size:20px; font-weight:300; line-height:30px; color:#6c6c6c; }
    h3 { font-size:17px; line-height:30px; position:relative; padding-bottom:18px; margin-bottom:22px; font-weight:400; }
    h3:after { content:""; position:absolute; left:0; bottom:0; height:2px; width:76px; background:#EAEAEA; }
    h4 { font-size:14px; margin-bottom:3px; }

    img { max-width:100%; }

    li { margin-bottom:5px; }

    .next-icon {
      display: inline-block;
      vertical-align: middle;
      background-size: contain;
      background-position: center;
      background-repeat: no-repeat;
      position: relative;
      top: 0.15em;
      fill: currentColor;
      margin-bottom: 5px;
    }

    .next-icon--color-yellow {
      fill: #E9BE33;
    }

    .next-icon--size-40 {
      width: 40px;
      height: 40px;
    }

    .wrapper { min-width:320px; max-width:650px; margin:0 auto; padding:20px; }

    .hero { margin-bottom:30px; }

    .content--block { position:relative; margin-bottom:50px; }
    .content--desc { margin-bottom:32px; position:relative; }
    .content--desc-large { font-size:20px; line-height:28px; }

    .request-id { padding-top:100px; font-size:13px; color:#ccc; }

    @media all and (min-width:500px) {
      body { padding:60px 0; }
      .wrapper { padding:20px 20px 20px 100px; }
      .ico svg { width:40px; height:40px; margin-bottom:0; }
      .hero { margin-bottom:70px; }
      .content--block { margin-bottom:80px; }
      .content--desc .next-icon { position:absolute; left:-70px; top:-7px; }
    }

    @media all and (min-width:900px) {
      .wrapper { padding:20px; }
    }

  </style>
</head>

<body class="status-error status-code-500">

  <div class="wrapper">
    <div class="hero">
      <svg width="160px" height="176px" viewBox="0 0 160 176" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns" role="img" aria-labelledby="hero__logo">
        <title id="hero__logo">Shopify logo</title>
        <defs></defs>
        <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
          <g id="user-action-required-2" sketch:type="MSArtboardGroup" transform="translate(-297.000000, -81.000000)" stroke="#979797" stroke-dasharray="5">
            <g id="shopify-bag-outline" sketch:type="MSLayerGroup" transform="translate(298.000000, 82.000000)">
              <path d="M138.817711,32.9976853 C138.371951,32.7161619 137.887187,32.6604147 137.887187,32.6604147 L123.887534,31.6151547 L113.584904,21.3716063 C113.200436,21.0733588 112.749104,20.9005425 112.286628,20.8085596 L104.647414,174.188624 L158.389365,162.551396 L139.402771,34.070819 C139.402771,34.070819 139.257899,33.2847834 138.817711,32.9976853" id="Fill-1" sketch:type="MSShapeGroup"></path>
              <path d="M104.652986,20.8643068 L99.4292354,22.483763 C97.1196409,15.7244147 93.9714603,10.8994944 90.0264836,8.10655958 C87.070537,6.01325214 83.8137024,5.13244635 80.3144857,5.408395 C79.5984836,4.46347992 78.8323334,3.59939829 77.9742453,2.90534562 C74.1100625,-0.222072416 69.1286936,-0.707073074 63.1694384,1.45591837 C45.436545,7.89750757 37.8224056,30.7622225 35.033619,42.4328993 L19.170132,47.3470151 C19.170132,47.3470151 15.5009693,48.3894878 14.6400951,49.4235984 C13.6956409,50.558054 13.5117649,53.615788 13.5117649,53.615788 L0.300550361,155.58857 L99.4988854,174.183049 L107.138099,20.7778986 C106.043201,20.5632719 104.926014,20.8001975 104.652986,20.8643068 L104.652986,20.8643068 Z M87.081681,12.7586636 C90.1602116,14.9383792 92.375082,19.3061725 93.9491723,24.1812653 L85.6218167,26.7595734 C85.6134587,26.1630783 85.6106727,25.5693706 85.5855987,24.9533641 C85.3850067,19.5932706 84.6550745,15.0777472 83.4153043,11.4207307 C84.7470126,11.5628861 85.9756388,11.9754154 87.081681,12.7586636 L87.081681,12.7586636 Z M62.4868683,33.9286636 C64.7825327,25.0620711 69.1621256,16.0561106 77.4671932,12.5273127 C79.1972995,17.0205372 79.6987796,23.1471547 79.6653476,28.6048058 L62.4868683,33.9286636 L62.4868683,33.9286636 Z M65.2115768,7.08638578 C68.8083035,5.77911389 71.558086,5.87109677 73.6531584,7.23969059 C62.5453743,12.3544964 57.6503714,25.0955194 55.513509,36.0888677 L41.7952423,40.3395918 C44.9099909,29.1929388 51.7774822,11.964266 65.2115768,7.08638578 L65.2115768,7.08638578 Z M74.6366166,82.0524358 C73.8509645,81.6705675 72.9204403,81.2608255 71.8673321,80.8705951 C70.8225819,80.4831521 69.6608197,80.1124332 68.4015474,79.8058236 C67.1506332,79.499214 65.8077809,79.2511389 64.3897067,79.1034088 C62.9883484,78.9612535 61.5173401,78.9138683 59.9906118,79.0030639 C58.5892535,79.0866847 57.3188373,79.3347597 56.2016511,79.7333522 C55.0956089,80.1291573 54.1344387,80.6726926 53.3432145,81.3472337 C52.5547764,82.0217749 51.9307123,82.8245346 51.4905242,83.7499381 C51.0531221,84.669767 50.79681,85.7122396 50.746662,86.8634194 C50.710444,87.7163515 50.8413861,88.5358354 51.1422741,89.3330204 C51.4431622,90.1302054 51.9112103,90.9106662 52.5519904,91.6883397 C53.1927705,92.4688005 54.0062827,93.246474 54.9925269,94.0380843 C55.984343,94.8352693 57.1572493,95.6519658 58.5112455,96.4965359 C60.4057259,97.7090375 62.3419963,99.0804187 64.1863286,100.65249 C66.055735,102.24686 67.8248453,104.044707 69.3460016,106.093417 C70.8838739,108.167213 72.1626481,110.489084 73.0263083,113.095265 C73.8955405,115.718171 74.3357286,118.614238 74.1964285,121.805766 C73.9707625,127.023704 72.8285023,131.522503 70.9368079,135.254778 C69.0701876,138.936881 66.4931371,141.832948 63.3895325,143.929043 C60.3555779,145.98054 56.8396452,147.254363 53.0144665,147.76445 C49.3035138,148.263388 45.319533,148.040399 41.2157542,147.134507 C41.1823222,147.126145 41.1488902,147.117783 41.1182442,147.112208 C41.0848122,147.106633 41.0541662,147.098271 41.0207342,147.089909 C40.9873022,147.084334 40.9538702,147.075972 40.9232242,147.06761 C40.8897921,147.059248 40.8591461,147.053673 40.8257141,147.045311 C38.9005878,146.579822 37.0423254,145.972178 35.2955031,145.266976 C33.5765407,144.570136 31.9606604,143.778525 30.4924382,142.922806 C29.0409319,142.075448 27.7287256,141.169556 26.5920374,140.230216 C25.4664932,139.302025 24.510895,138.340386 23.7614609,137.378747 L28.2914977,122.340939 C29.0548619,122.987606 29.9909581,123.720682 31.0552103,124.467695 C32.1306065,125.225856 33.3397307,126.000743 34.6352209,126.725456 C35.9446412,127.455745 37.3432135,128.13586 38.7835757,128.687758 C40.240654,129.248017 41.7423083,129.677271 43.2300326,129.897472 C44.5422388,130.0898 45.7151451,130.050777 46.7431793,129.819426 C47.7767855,129.585288 48.6599476,129.156034 49.3843078,128.570689 C50.1086679,127.982556 50.674226,127.235543 51.0642661,126.379824 C51.4598782,125.521317 51.6827582,124.554103 51.7273342,123.519992 C51.7719102,122.483094 51.6771862,121.510305 51.4180882,120.562603 C51.1589901,119.614901 50.735518,118.700646 50.1225979,117.780818 C49.5124638,116.866564 48.7212396,115.949522 47.7210655,115.00182 C46.7320353,114.059692 45.542413,113.089691 44.1326968,112.061155 C42.4053764,110.770607 40.7783521,109.368565 39.3240598,107.846666 C37.8836976,106.341492 36.6104953,104.713673 35.5657451,102.9437 C34.5321389,101.193238 33.7186268,99.2978328 33.1920727,97.2435484 C32.6655186,95.1948387 32.4231365,92.9788874 32.5290045,90.5650336 C32.7045226,86.5289361 33.5124627,82.8078104 34.860887,79.4574036 C36.2232413,76.0735484 38.1567256,73.0353259 40.5805461,70.4207821 C43.0545146,67.7532785 46.0578231,65.5038789 49.5236078,63.7729282 C53.0869025,61.9918051 57.1656073,60.7430678 61.6789281,60.1493601 C63.7767865,59.8761988 65.7854929,59.7451929 67.6883313,59.7368308 C69.6162437,59.7284687 71.42993,59.8427505 73.1015303,60.0573772 C74.7926326,60.2720039 76.3332909,60.5869756 77.6984312,60.9716313 C79.0775015,61.3618618 80.2699097,61.8245635 81.2533679,62.3262883 L74.6366166,82.0524358 L74.6366166,82.0524358 Z" id="Fill-10" sketch:type="MSShapeGroup"></path>
          </g>
        </g>
      </g>
    </svg>
    </div>
    <div class="content">
      <div class="content--block">
        <div class="content--desc">
          <svg class="next-icon next-icon--color-yellow next-icon--size-40" role="img" aria-labelledby="content--image-alert">
            <title id="content--image-alert">Alert sign</title>
            <path d="M37.4,37.7H2.6c-0.9,0-1.8-0.5-2.3-1.3c-0.5-0.8-0.5-1.8,0-2.6L17.7,3.7c0.5-0.8,1.3-1.3,2.3-1.3 s1.8,0.5,2.3,1.3l17.4,30.1c0.5,0.8,0.5,1.8,0,2.6C39.2,37.2,38.3,37.7,37.4,37.7z M20,4.3c-0.1,0-0.4,0-0.5,0.3L2.1,34.7 c-0.2,0.3-0.1,0.5,0,0.6c0.1,0.1,0.2,0.3,0.5,0.3h34.7c0.3,0,0.5-0.2,0.5-0.3c0.1-0.1,0.2-0.3,0-0.6L20.5,4.7 C20.4,4.4,20.1,4.3,20,4.3z M20,27c-0.6,0-1-0.4-1-1V11c0-0.6,0.4-1,1-1s1,0.4,1,1v15C21,26.6,20.6,27,20,27z"></path>
            <circle cx="20" cy="31.7" r="1.8"></circle>
          </svg>
          <p class="content--desc-large">Oops, something went wrong.</p>
        </div>
      </div>
      <div class="content--block">
        <h3>What happened?</h3>
        <div class="content--desc">
          Oauth error invalid_request: The authorization code was not found or was already used
        </div>
      </div>
      <div class="content--block">
        <h3>What can I do?</h3>
        <div class="content--desc">
          <ul>
            <li>Press the back button on your browser.</li>
            <li>Return to your <a href="/admin">admin dashboard</a>.</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="request-id">Request ID: bdb4de0d-770f-4a05-9cc3-7d7186912af0</div>
  </div>
</body>
</html>




