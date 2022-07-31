# frozen_string_literal: true

require_relative "lib/singly_linked_queue/version"

Gem::Specification.new do |spec|
  spec.name = "singly_linked_queue"
  spec.version = SinglyLinkedQueue::VERSION
  spec.authors = ["Aria Diniz"]
  spec.email = ["aria.diniz.dev@gmail.com"]

  spec.summary = "An implementation of a linked queue data structure."
  spec.description = "An implementation of a linked queue data structure. Developed with the intent to be used by TeguQS"
  spec.homepage = "https://github.com/ariasdiniz/singly_linked_queue"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/ariasdiniz/singly_linked_queue/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
