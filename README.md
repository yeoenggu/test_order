# Doing
- deployment
  - logging does not work ... comment out for the moment.
  - bundle versions still mismatch ... need to fix

Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4 --deployment
remote:        Warning: the running version of Bundler (1.13.7) is older than the version that created the lockfile (1.14.5). We suggest you upgrade to the latest version of Bundler by running `gem install bundler`.



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

# To Do
- add in screentime
- add in settings
- add in admin

# Done

# Deferred
- puma config

