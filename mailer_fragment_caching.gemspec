Gem::Specification.new do |s|
  s.name        = 'mailer_fragment_caching'
  s.version     = '0.0.6'
  s.summary     = "Rails fragment caching from within mailers"
  s.description = "Rails fragment caching from within mailers"
  s.authors     = ["Giles Thompson"]
  s.email       = 'me@gilesthompson.co.nz'
  s.license     = 'MIT'
  s.files       = ["lib/mailer_fragment_caching.rb"]
  s.homepage    =
    'http://github.com/gilest/mailer_fragment_caching'

  s.add_dependency('rails', '>=3.0', '<5.0')

  s.add_development_dependency 'rspec', '~> 3.3'
  s.add_development_dependency 'sqlite3', '~> 1.3'
end
