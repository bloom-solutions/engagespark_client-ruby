require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = SPEC_DIR.join("fixtures", "vcr_cassettes")
  config.hook_into :webmock
  config.configure_rspec_metadata!
  CONFIG.each do |key, value|
    config.filter_sensitive_data("[#{key}]") { CONFIG[key] }
  end
end
