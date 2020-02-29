lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "engagespark_client/version"

Gem::Specification.new do |spec|
  spec.name          = "engagespark_client"
  spec.version       = EngagesparkClient::VERSION
  spec.authors       = ["Ramon Tayag"]
  spec.email         = ["ramon.tayag@gmail.com"]

  spec.summary       = %q{Ruby wrapper for the engageSPARK API.}
  spec.homepage      = "https://github.com/bloom-solutions/engagespark_client-ruby"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bloom-solutions/engagespark_client-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/bloom-solutions/engagespark_client-ruby/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "vcr", "~> 5.0"
  spec.add_development_dependency "webmock", "~> 3.8"

  spec.add_runtime_dependency "api_client_base", "~> 1.0"
  spec.add_runtime_dependency "activesupport", ">= 5.0"
  spec.add_runtime_dependency "typhoeus", "~> 1.0"
end
