export RAILS_ENV=production

bundle install --deployment --without development,test --path vendor/bundle
bin/rails db:create
bin/rails db:migrate
bin/rails assets:precompile
