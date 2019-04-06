set :branch, 'master'

server "13.230.159.137", user: "ec2-user", roles: %w[web app db]

set :ssh_options, {
  keys: ["~/.ssh/aws/rails_puma.pem"],
  forward_agent: true,
}
