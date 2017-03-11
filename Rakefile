require './app'
require 'sinatra/activerecord/rake'

namespace :dev do

  task :setup do
    puts 'Running database setup, migrating, seeding...'
    puts `bundle exec rake db:drop`
    puts `bundle exec rake db:create`
    puts `bundle exec rake db:migrate`
    puts `bundle exec rake db:seed`
  end

end
