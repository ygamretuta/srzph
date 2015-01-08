lock '3.3.5'

set :application, 'srzph'
set :repo_url, 'git@github.com:ygamretuta/srzph.git'
set :deploy_to, '/home/ygamretuta/webapps/blog'
set :pty, true
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/application.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
set :tmp_dir, '/home/username/tmp'

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      capture("#{deploy_to}/bin/restart")
    end
  end

end
