default['selenium']['user'] = 'seleniumuser'
default['selenium']['home'] = '/home/seleniumuser/'

default['selenium']['bindings'] = { 'python' => '2.24.0', 'ruby' => '2.25.0'}

default['selenium']['server']['version'] = '2.25.0'
default['selenium']['server']['installpath'] = default['selenium']['home']+'/selenium'
default['selenium']['server']['standalonefile'] = default['selenium']['home']+'/selenium'

default['selenium']['server']['hubport'] = '4444'
default['selenium']['node']['hubhost'] = 'localhost'

default['selenium']['xvfb']['display'] = ':98'
default['selenium']['xvfb']['fbsize'] = '1280x1024x16'

default['selenium']['chromedriver_version'] = '21.0.1180.4'
