
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "xctoken/version"

Gem::Specification.new do |spec|
  spec.name          = "xctoken"
  spec.version       = Xctoken::VERSION
  spec.authors       = ["Shashikant86"]
  spec.email         = ["shashikant.jagtap@icloud.com"]

  spec.summary       = %q{Generate on emand JWT Tokens for Apple's brand new AppStore Connect API .}
  spec.description   = %q{Apple has introduced brand new AppStore Connect API whic requires JWT tokens to be generated after 20 minutes. XCToken can genarate quick tokens at regular intervals}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", '~> 0.17.0'
  spec.add_dependency "jwt", '~> 2.1.0'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end