# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opal/rails/web_console/version'

Gem::Specification.new do |spec|
  spec.name          = "opal-rails-web_console"
  spec.version       = Opal::Rails::WebConsole::VERSION
  spec.authors       = ["RainChen"]
  spec.email         = ["hirainchen@gmail.com"]

  spec.summary       = %q{Interactive web console for opal on the browser for Ruby on Rails applications}
  spec.description   = %q{Enable to type ruby codes in an interactive web console for opal on the browser for Ruby on Rails applications, just like the rails web-console}
  spec.homepage      = "https://github.com/rainchen/opal-rails-web_console"

  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "opal-irb", ">= 0"
  spec.add_dependency "jquery-ui-rails", ">= 0"
  spec.add_dependency "codemirror-rails", ">= 0"
end
