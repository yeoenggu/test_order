web: bundle exec rackup config.ru -p $PORT 
resque: env TERM_CHILD=1 RESQUE_TERM_TIMEOUT=7 QUEUE=* bundle exec rake resque:work

