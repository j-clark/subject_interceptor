# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'subject_interceptor/version'

Gem::Specification.new do |spec|
  spec.name          = "subject_interceptor"
  spec.version       = SubjectInterceptor::VERSION
  spec.authors       = ["Alex Kwiatkowski", "Joshua Clark"]
  spec.email         = ["jclark@pivotallabs.com", "akwiatkowski@pivotallabs.com"]

  spec.description   = <<-eos
    SubjectInterceptor allows you to intercept all emails and append text to the subject.
  eos

  spec.summary       = "Intercept emails and append text to the subject"

  spec.homepage      = "http://github.com/j-clark/subject_interceptor"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'mail'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.0"
end
