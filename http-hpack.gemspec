
require_relative "lib/http/hpack/version"

Gem::Specification.new do |spec|
	spec.name          = "http-hpack"
	spec.version       = HTTP::HPACK::VERSION
	spec.authors       = ["Samuel Williams"]
	spec.email         = ["samuel.williams@oriontransfer.co.nz"]

	spec.summary       = "A compresssor and decompressor for HTTP 2.0 HPACK."
	spec.homepage      = "https://github.com/socketry/http-hpack"

	spec.files         = `git ls-files -z`.split("\x0").reject do |f|
		f.match(%r{^(test|spec|features)/})
	end
	
	spec.require_paths = ["lib"]

	spec.add_development_dependency "bundler", "~> 1.16"
	spec.add_development_dependency "rake", "~> 10.0"
	spec.add_development_dependency "rspec", "~> 3.0"
end
