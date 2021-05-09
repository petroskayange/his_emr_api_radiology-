require_relative "lib/radiology/version"

Gem::Specification.new do |spec|
  spec.name        = "his_emr_api_radiology"
  spec.version     = Radiology::VERSION
  spec.authors     = ["petros"]
  spec.email       = ["kayangepetros@gmail.com"]
  spec.homepage    = "https://github.com/petroskayange/his_emr_api_radiology"
  spec.summary     = "Radiology extension for the HIS-EMR-API"
  spec.description = "This adds a radiology interface to the OpenMRS compatible core API provided by
                      [HIS-EMR-API](https://github.com/EGPAFMalawiHIS/HIS-EMR-API)."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.metadata["homepage_uri"] = spec.homepage
 
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency 'json', '~> 1.8', '>= 1.8.3'
  spec.add_dependency 'rails', '~> 5.2.4', '>= 5.2.4.3'

  spec.add_development_dependency 'bcrypt', '~> 3.1.0'
  spec.add_development_dependency 'factory_bot_rails', '~> 6.1.0'
  spec.add_development_dependency 'faker', '~> 2.16.0'
  spec.add_development_dependency 'rspec-rails', '~> 5.0.0'
  spec.add_development_dependency 'rswag-api', '~> 2.4.0'
  spec.add_development_dependency 'rswag-specs', '~> 2.4.0'
  spec.add_development_dependency 'rswag-ui', '~> 2.4.0'
  spec.add_development_dependency 'rubocop', '~> 0.79.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.41.0'
  spec.add_development_dependency 'shoulda-matchers', '~> 4.5.0'

  spec.add_development_dependency 'sqlite3', '~> 1.4.0'
end
