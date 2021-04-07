# frozen_string_literal: true

require_relative 'lib/rubernetes/version'

Gem::Specification.new do |spec|
  spec.name        = 'rubernetes'
  spec.version     = Rubernetes::VERSION
  spec.summary     = 'Build Kubernetes custom resources controllers in Ruby.'
  spec.description = 'A ruby gem to provide the base for building Kubernetes custom resources controllers in Ruby.'

  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.license = 'MIT'

  spec.authors  = ['Tarek N. Samni', 'Ramy Aboul Naga', 'Hesham Youssef']
  spec.email    = ['tarek.samni@gmail.com', 'ramy.naga@gmail.com', 'heshamyoussef79@gmail.com']
  spec.homepage = 'https://github.com/rubernetes/gem'

  spec.metadata = {
    # "allowed_push_host" => "TODO: Set to 'http://mygemserver.com'"
    'bug_tracker_uri' => "#{spec.homepage}/issues",
    # "changelog_uri"     => "#{spec.homepage}/releases/tag/v#{version}",
    'documentation_uri' => "https://rubydoc.info/#{spec.homepage.gsub(%r{^https?://([^.]+)\.com}, '\1')}",
    'homepage_uri' => spec.homepage,
    'source_code_uri' => spec.homepage.to_s # /tree/v#{version}
  }

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']
end
