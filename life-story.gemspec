lib = File.expand_path("../life-story", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |spec|
  spec.name          = "life-story"
  spec.version       = "0.1.0"
  spec.authors       = ["'Sophie Gu'"]
  spec.email         = ["'sophieqgu@gmail.com'"]

  spec.summary       = %q{A Sinatra app recording your important memories.}
  spec.description   = %q{This Sinatra app allows you to write stories recorded that are meaningful in various aspects of life. Record things that matter to you at that moment. Read later to reflect on what is really important in life. Browse by date, category and users to see what others have been through. Visualize your life and those that are connected to you in a single app.}
  spec.homepage      = "https://github.com/sophieqgu/life-story"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://www.rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/sophieqgu/life-story"
    spec.metadata["changelog_uri"] = "https://github.com/sophieqgu/life-story"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["life-story"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "sinatra"
  spec.add_development_dependency "activerecord", "~> 4.2"
  spec.add_development_dependency "sinatra-activerecord"
  spec.add_dependency "sqlite3", "~> 1.3.6"
  spec.add_dependency "sinatra-flash"
end 