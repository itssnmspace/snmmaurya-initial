set :port, 22
set :user, 'snmspace'
set :deploy_via, :remote_cache
set :use_sudo, true
set :branch, "master"


server '138.68.8.26',
  roles: [:web, :app, :db],
  port: fetch(:port),
  user: fetch(:user),
  primary: true

set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"

set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  user: 'snmspace',
}

set :rails_env, :production
set :conditionally_migrate, true    