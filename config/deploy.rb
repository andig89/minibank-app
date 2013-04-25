set :application, "minibank"
set :repository,  "git://github.com/macuk/minibank-app.git"
set :scm, :git
set :use_sudo, false
set :user, 'mb'
set :deploy_to, "/home/#{user}/#{application}"

role :web, "d3"
role :app, "d3"
role :db,  "d3", :primary => true
