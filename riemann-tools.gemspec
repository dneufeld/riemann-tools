require 'rubygems'
require 'rubygems/package_task'
require 'rdoc/task'
require 'find'

# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'

# Gemspec
gemspec = Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-tools'

  s.name = 'riemann-tools'
  s.version = '0.1.4'
  s.author = 'Kyle Kingsbury'
  s.email = 'aphyr@aphyr.com'
  s.homepage = 'https://github.com/aphyr/riemann-tools'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Utilities which submit events to Riemann.'

  s.add_dependency 'riemann-client', '>= 0.2.2'
  s.add_dependency 'trollop', '>= 1.16.2'
  s.add_dependency 'munin-ruby', '>= 0.2.1'
  s.add_dependency 'yajl-ruby', '>= 1.1.0'
  s.add_dependency 'redis', '>= 3.0.2'
  s.add_dependency 'fog', '>= 1.4.0'
  s.add_dependency 'faraday', '>= 0.8.5'
  s.add_dependency 'nokogiri', '>= 1.5.6'

  s.files = FileList['lib/**/*', 'bin/*', 'LICENSE', 'README.markdown'].to_a
  s.executables |= Dir.entries('bin/')
  s.require_path = 'lib'
  s.has_rdoc = true

  s.required_ruby_version = '>= 1.9.3'
end
