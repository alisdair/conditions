set :stage, :production

server 'riker.randomoracle.com', user: 'deploy', roles: %w{web app db}
