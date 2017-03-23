require 'dotenv'
require 'spec_helper'
require 'address_validation_autocomplete'


# Load Environment Variables
Dotenv.load


describe AddressValidationAutocomplete do


  it 'has a version number' do
    expect(AddressValidationAutocomplete::VERSION).not_to be nil
  end


  it 'validate' do

    begin

      # Declare the Client instance passing in the authentication parameters
      @client = AddressValidationAutocomplete::Client.new(ENV['ACCESS_KEY'])

      # Set the query to detect
      address = ''

      # We declare the options
      options = AddressValidationAutocomplete::ValidateOptions.new()

      # We make the call to validate
      response = @client.validate(address, options)

      # First we check the response
      expect(response).not_to be nil

    rescue => e
      puts e.inspect

    end

  end

end




