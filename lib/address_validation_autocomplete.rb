require "httparty"
require "hashable"
require "address_validation_autocomplete/version"
require "address_validation_autocomplete/validate/validate_options"
require "address_validation_autocomplete/validate/validate_request"
require "address_validation_autocomplete/validate/validate_response"
require "address_validation_autocomplete/validate/validate_exception"

module AddressValidationAutocomplete

  class Client

    include HTTParty

    base_uri 'apilayer.net/api'

    def initialize(access_key)

      if access_key.nil?
        raise AddressValidationAutocomplete::MissingArgumentException.new 'access_key'
      end

      @access_key = access_key

    end


    def validate(address, options = {})

      if address.nil?
        raise AddressValidationAutocomplete::MissingArgumentException.new 'address'
        return
      end

      # Create a shallow copy so we don't manipulate the original reference
      q = options.dup

      # Populate the Query
      q.access_key = @access_key
      q.address = address

      # We then create the Request
      req = AddressValidationAutocomplete::ValidateRequest.new(q)

      #  We create a Hash of the request so we can send it via HTTP
      req_dto = req.to_dh

      begin

        # We make the actual request
        res = self.class.get('/validate', req_dto)

        # We ensure that we tap the response so we can use the results
        res.inspect

        if (res[AddressValidationAutocomplete::ValidateResponse::ERROR_EXPR])
          raise AddressValidationAutocomplete::ValidateException.new res[AddressValidationAutocomplete::ValidateResponse::ERROR_EXPR]
        end

        # We just return the parsed binary response
        return res.parsed_response

      rescue => e
        puts e.inspect
        return

      end
    end

  end

end
