# frozen_string_literal: true

require_relative 'lib/solidus_sale_prices/version'

Gem::Specification.new do |spec|
  spec.name = 'solidus_sale_prices'
  spec.version = SolidusSalePrices::VERSION
  spec.authors = ['Renuo GmbH, Jonathan Dean']

  spec.summary = 'Adds sale pricing functionality to Solidus.'
  spec.description = 'Adds sale pricing functionality to Solidus. It enables timed sale planning for different currencies.'
  spec.homepage = 'https://github.com/solidusio-contrib/solidus_sale_prices'
  spec.license = 'BSD-3-Clause'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/solidusio-contrib/solidus_sale_prices'
  spec.metadata['changelog_uri'] = 'https://github.com/solidusio-contrib/solidus_sale_prices/blob/main/CHANGELOG.md'

  spec.required_ruby_version = Gem::Requirement.new('>= 2.5', '< 4')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  files = Dir.chdir(__dir__) { `git ls-files -z`.split("\x0") }

  spec.files = files.grep_v(%r{^(test|spec|features)/})
  spec.test_files = files.grep(%r{^(test|spec|features)/})
  spec.bindir = "exe"
  spec.executables = files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  solidus_version = [">= 1.0", "< 5"]

  spec.add_dependency 'deface', '~> 1.0'
  spec.add_dependency 'discard'
  spec.add_dependency 'solidus_api', solidus_version
  spec.add_dependency 'solidus_backend', solidus_version
  spec.add_dependency 'solidus_core', solidus_version
  spec.add_dependency 'solidus_support', '>= 0.12.0'

  spec.add_development_dependency 'solidus_dev_support', '~> 2.11'
  spec.add_development_dependency 'timecop', '~> 0.9'
end
