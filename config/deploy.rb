set :application, "noths_recruit"
set :repository,  "git@github.com:notonthehighstreet/noths_recruit.git"

set :scm, :git

set :deploy_to, "/var/sites/noths/recruit"

set :user, "noths"
set :shell, "zsh"
set :use_sudo, false
set :rake, "bundle exec rake"

server 'recruit.noths.com', :app, :web, :db, :primary => true

before "deploy:finalize_update", "deploy:symlink_configuration"
before "deploy:finalize_update", "deploy:bundler_update"

after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  # task :start do ; end
  # task :stop do ; end
  # task :restart, :roles => :app, :except => { :no_release => true } do
  #   run "touch #{current_path}/tmp/restart.txt"
  # end

  task :foo do
    run "gem list"
    run "cd /var/sites/noths/recruit/current && bundle exec gem list"
  end

  task :bundler_update do
    run "cd #{release_path} && bundle install --deployment --without development test"
  end

  task :symlink_configuration do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/bundle #{release_path}/vendor/bundle"
  end
end

require 'capistrano-unicorn'