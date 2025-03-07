require 'marqeta/card'
require 'marqeta/client_access'
require 'marqeta/gateway_response_codes'
require 'marqeta/kyc'
require 'marqeta/one_time'
require 'marqeta/transaction'
require 'marqeta/transaction_channels'
require 'marqeta/user'
require 'marqeta/version'
require 'marqeta/webhook'

module Marqeta
  class Configuration
    attr_accessor :username,
      :password,
      :base_url,
      :logger,
      :webhook_endpoint,
      :webhook_username,
      :webhook_password,
      :host,
      :version,
      :proxy
  end

  class << self
    def configure
      yield(configuration)
      configuration
    end

    def configuration
      @_configuration ||= Configuration.new
    end
  end
end
