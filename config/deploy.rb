# config valid only for current version of Capistrano
lock '3.6.0'

set :application, 'snmmaurya'
set :repo_url, 'git@github.com:snmspace/snmmaurya.git'

ask :branch, "master"

set :use_sudo, false
set :bundle_binstubs, nil
set :linked_files, fetch(:linked_files, []).push('config/database.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

after 'deploy:publishing', 'deploy:restart'

namespace :deploy do
  task :restart do
    # invoke 'unicorn:reload'
  end
end