package 'vim-nox'
template "/tmp/file" do
  local true
  source "#{release_path}/deploy/templates/file.erb"
  user "deploy"
  group "deploy"
  mode "0644"
  action :create
  variables {
  	hell: node['project']
  }
end
