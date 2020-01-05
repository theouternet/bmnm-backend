
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cli/data/gem/project/version"

Gem::Specification.new do |s|
  s.name        = 'bestmovies'
  s.version     = Cli::Data::Gem::Project::VERSION
  s.date        = '2020-01-05'
  s.summary     = "Best Movies Near Me"
  s.description = "Lists Movies That Are Actually Good, Actually Playing Near Me"
  s.authors     = ["theouternet"]
  s.email       = 'steveholt04@gmail.com'
  s.files       = ["lib/best_movies.rb", "lib/cli.rb", "lib/scraper.rb", "lib/movie.rb", "config/environment.rb"]
  s.homepage    = 'https://github.com/theouternet/cli-data-gem-project'
  s.license     = 'MIT'
  s.executables << 'bestmovies'

  s.add_development_dependency "bundler", "~> 2.0.1"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", ">= 0"
  s.add_development_dependency "nokogiri", ">= 0"
  s.add_development_dependency "pry", ">= 0"
end