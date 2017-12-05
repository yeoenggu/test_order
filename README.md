# test_order
1.  Set up a test app.
2.  Set up .env 

  SHOPIFY_API_KEY=xxxxxxxxxxx
  SHOPIFY_SHARED_SECRET=xxxxxxxxxxxx
  SHOPIFY_REDIRECT_URI=https://1f9d81ef.ngrok.io/auth/shopify/callback

  SECRET=xxxxx
  OAUTH_DEBUG=true

3. start sinatra 
  bundle exec foreman run rackup -s Puma config.ru

4. Open a new chrome tab and go to install page (https://1f9d81ef.ngrok.io)

5. Enter the test store URL.

6. Authorize the installation of the app.

7. When "1st Sales dev" is loaded in the embedded shopify admin.

8. Click back button.

9. CSRF detected error will be shown on browser and on server console.
