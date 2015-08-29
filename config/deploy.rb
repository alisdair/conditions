set :application, 'conditions'
set :repo_url, 'git@github.com:alisdair/conditions.git'
set :branch, 'master'

set :deploy_to, '/home/deploy/conditions'

set :format, :pretty
set :log_level, :info
# set :pty, true

# set :linked_files, %w{.env}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart
end
