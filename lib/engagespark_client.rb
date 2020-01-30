require "engagespark_client/version"
require "api_client_base"
require "active_support/core_ext/string/inflections"
require "active_support/core_ext/hash/indifferent_access"
require "pathname"

module EngagesparkClient
  class Error < StandardError; end

  include APIClientBase::Base.module

  with_configuration do
    has :host, classes: String, default: "https://api.engagespark.com"
    has :token, classes: String
    has :org_id, classes: Integer
  end
end

require "engagespark_client/client"
lib_dir = Pathname.new(File.dirname(__FILE__))
Dir[lib_dir.join("engagespark_client", "**", "*.rb")].each do |file|
  require file
end
