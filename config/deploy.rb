
server "ubuntu@54.217.255.158", :web, :app, :db
set :application, "capistranodemo"
set :scm, :git
set :branch, "master"

set :deploy_to, "/home/ubuntu/apps/#{application}"
set :repository, "git@github.com:parse/capistranodemo.git"
set :deploy_via, :remote_cache
set :use_sudo, false
set :user, "ubuntu"
set :group, "ubuntu"
set :git_enable_submodules, 1

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

Dir['recipes/*.rb'].each { |plugin| load(plugin) }