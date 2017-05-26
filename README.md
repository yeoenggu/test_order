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
   
# Heroku

heroku logs --tails
heroku run bundle exec rake -T
heroku run bundle exec rake db:rollback


# Doing
- test
  - installing and uninstalling
  - flash issue
      - fixing haml. i hard coded flash messages.  these message seem to hang around.
      - change to sinatra flash - worked
- bugs

  - onboarding
    - install
    - change setting
      - change the message
      - change the button text
      - change the font
        - bug.  switching font does not work.  revert to local copy
      - change time to trigger 
      - change the colors
        - bar
        - message
        - buttons 
        - buttons text
        - buttons text hover
  - test discount
    - default 
    - invalid
    - valid
      - test web hook
        - increase count

  - test enabling and disabling
    - enabled in 
      - home page
      - product page
    - not enabled
      - about us
      - blog
      - search
      - cart

    - product, collection
    - checkout, blog, etc
==========>
  - test product variant
    - with single options 
    - with multiple options
      - default value
      - no default value
        - it select the first one
        - if you select the option, it will switch to the new one.
      - how do I test the edge cases ?
        - manually trace or recreate it 
        - manually grep the generated js.  add console log lines to it.
          - test on the 3 websites
          - test more ...

==========>
  - test new customer vs old customer.
    - new customer will see it
      - eg@showcrowd.co
    - old customer will not.
      yeoenggu@gmail.com

- omniauth
  - routing to failure ...
  - retry
  - clear ... data?


- review 
  - default setting,
  - messages etc
- review product page

- remove name of the customer ...


at=info method=GET path="/form_setting?hmac=49f2f5645a3ee6d90134984cff8cf8bbb435edf18f5198a7990a31b7992e1e99&locale=en&protocol=https%3A%2F%2F&shop=sg-drinks-party.myshopify.com&timestamp=1495558016" host=firstorder.herokuapp.com request_id=ed101a97-d979-4a12-9943-b080ebbd1260 fwd="175.156.72.13" dyno=web.1 connect=1ms service=7ms status=404 bytes=1674 protocol=https

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

- store specific jquery selector
  - to select the variant

# notes

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


# test simulation for js jquery

1) manually grep the generated js.
2) augment it like following with the var declaration and console.log

var productUrl = "";
var enabled = false;

function isNumeric(n) {
      return !isNaN(parseFloat(n)) && isFinite(n)
    }

var loadProductUrl = function($) {
      // the following will select the option that is in the form
      console.log("running");
      var form = this.$("form[action='/cart/add']");
      var variant_id = this.$('input[name^=id]:checked, select[name^=id], input[name^=id], hidden[name^=id]', form).val();
      if (typeof variant_id == 'undefined') {
        // They have customized the form.  We cannot support it.
        enabled = false;
        console.log("Not enabled.  Cannot find the form");
      } else if ((variant_id == null) || (variant_id == "")) {
        // form is supported but there is no option selected.
        
        // var option_1 = this.$('option[value]', form).val();
        // Select the option that is selected
        // https://www.allbirds.com/products/mens-wool-runners?variant=40210878599
        // $('option[selected]', form).val()

        var option_1 = this.$('option[selected]', form).val();
        if ((typeof option_1 != 'undefined') || ( option_1 == "")){
          // We do not know how to grep the selected option
          // try to grep the first or the last option
          option_1 = this.$('option[value]', form).val();
          if (typeof option_1 == 'undefined') {
            enabled = false;
            console.log("Not enabled.  Cannot grep the option");
          }
          else {
            if (!isNumeric(option_1)) {
              // if the first option is not a valid variant id, we grep the last one.
              option_1 = this.$('option[value]', form).last().val();
              console.log("Grep the last option");
            }
            console.log("Grep first or last option");
            enabled = true;
            productUrl = "/cart/" +  option_1 + ":1";
          }
        } else {
          enabled = true;
          productUrl = "/cart/" +  option_1 + ":1";
          console.log("Got the selected option");
          // The reason for retry is that I pick the first option if nothing is selected.  
          // In the event, customer select some option later.  I should check again.
        }
      } else {
        // this is the case where we can grep the variant normally.
        enabled = true
        productUrl = "/cart/" +  variant_id + ":1";
        console.log("Normal grep.")
      }
    }; // end of loadProductUrl