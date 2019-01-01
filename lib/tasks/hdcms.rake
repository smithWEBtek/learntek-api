namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app learntek-api --confirm learntek-api
      heroku run rake db:migrate --app learntek-api
      heroku run rake db:seed --app learntek-api')	
  end
end