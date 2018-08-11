#require 'rubygems' was in https://gist.github.com/erikwco-snippets/5102867 plus spec = before Gem...
Gem::Specification.new do |s|

 s.name        = 'greeter.rb'

 s.version     = '0.0.0'

 s.summary     = 'It greets you!'

 s.description = 'This is a super simple greeter gem.'

 s.authors     = ['Lisa Savoie']

 s.email       = ['twosavoe@gmail.com']

 s.files       = ['lib/greeter.rb']

 s.homepage    = 'https://github.com/twosavoie'

 s.license     = 'MIT'

 s.bindir      = 'bin' #exe didn't work. bin didn't work. is it possible I don't need? commenting out didn't work.

 s.executables << 'greeter'

end
