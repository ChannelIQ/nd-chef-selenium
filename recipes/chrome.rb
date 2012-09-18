include_recipe 'selenium::default'
	
case node['kernel']['machine']
when 'i686'
  arch = 'linux32'
when 'x86_64'
  arch = 'linux64'
end

package 'chromium-browser'

remote_file "/usr/src/chromedriver_#{arch}_#{node['selenium']['chromedriver_version']}.zip" do
  source "http://chromedriver.googlecode.com/files/chromedriver_#{arch}_#{node['selenium']['chromedriver_version']}.zip"
  action :create_if_missing
  notifies :run, "execute[unpack chromedriver]", :immediately
end

execute 'unpack chromedriver' do
  command "unzip -o /usr/src/chromedriver_#{arch}_#{node['selenium']['chromedriver_version']}.zip -d /usr/local/bin"
  action :nothing
end

file '/usr/local/bin/chromedriver' do
  mode 0755
  owner node['selenium']['user']
  group node['selenium']['user']
end
