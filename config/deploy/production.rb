set :branch, 'master'

server "web01.rails", user: fetch(:user), roles: %w[web app db]

set :ssh_options, {
  keys: ["~/.ssh/aws/rails_puma.pem"],
  forward_agent: true,
}
