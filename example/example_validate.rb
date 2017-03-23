require 'dotenv'
require 'address_validation_autocomplete'
require 'address_validation_autocomplete/validate/validate_options'

# Load Environment Variables
Dotenv.load

begin

  # Declare the Client instance passing in the authentication parameters
  @client = AddressValidationAutocomplete::Client.new(ENV['ACCESS_KEY'])

  # Set the address to check
  address = ''

  # We declare the options
  options = AddressValidationAutocomplete::ValidateOptions.new()

  # We make the call to validate
  response = @client.validate(address, options)

  # If its a success, we print a message to the user
  if !response.nil?
    puts 'SUCCESS : Address validated...' << response.to_s
  end

rescue => e
  puts e.inspect

end
