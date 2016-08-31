package 'vim-nox'
template "/tmp/file" do
  local true
  source "#{release_path}/deploy/templates/file.erb"
  user "deploy"
  group "www-data"
  mode "0644"
  action :create
  variables(hell: node[:"web-app"][:servlet])
end
