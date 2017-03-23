[![Travis](https://travis-ci.org/pmoelgaard/address_validation_autocomplete.svg)](Travis)

# address_validation_autocomplete (incomplete)

Ruby Library for the streetlayer API, [https://streetlayer.com/](https://streetlayer.com/)   

---

## Installation

Add this line to your application's Gemfile:

```
gem 'address_validation_autocomplete'

```

And then execute:

```
$ bundle

```

Or install it yourself as:

```
$ gem install address_validation_autocomplete

```

---

## Configuration

Before using the streetlayer API client you have to setup your account and obtain your API Access Key.  
You can get it by signing up at [https://streetlayer.com/product](https://streetlayer.com/product).

---

## API Overview
All endpoints in the public API is available through this library.

- validate

---

## Usage

The general API is documented here: [https://streetlayer.com/documentation](https://streetlayer.com/documentation).  
You can find parameters, result set definitions and status codes documented here as well.

In the examples directory you can find demos and samples of general usage of all the API functions.

### Setup

First we require the module

```
require 'address_validation_autocomplete'

```

Second we instantiate the client

```
@client = AddressValidationAutocomplete::Client.new( [access_key] )

```

#### Required Parameters

###### access_key
Your unique key that you can find on the dashboard of your account under the StreetLayer account.

#### Optional Parameters

###### Secure (only available for Basic, Pro and Enterprise accounts)
Boolean value to indicate if the calls to the API should use a secure protocol or insecure (HTTP/HTTPS). Defaults to false (HTTP, insecure).

---

## Validate

Takes a string representing a phone number and validates and analyses it.

###### Define Query

First we get a reference to the string that needs to be detected

```
address = ''

```

Second we define an options object.
All the options are documented here: [https://streetlayer.com/documentation](https://streetlayer.com/documentation)

```
options = AddressValidationAutocomplete::ValidateOptions.new()

```

###### Call Client
We then place the actual call to the API, passing in the email we wish to check and the options we defined above.

```
response = @client.validate( [address] [, options] )

``` 

###### Response

If we pass the address `````` as the query argument above, we get the following result:

```
{
}

```
    
---

## Example Application

In the [rootdir]/example directory there is a fully functional application which runs all requests against all the endpoints in the API, the examples above can be seen there as source code.

The example application uses a process.env variable to hold the access key.

---

## Tests

The tests are written using the rspec testing library.  
**RSpec** [http://rspec.info/](http://rspec.info/)

In order to run the tests, the following environment variables needs to be set:

```
ACCESS_KEY = [access_key]

```


---

## Customer Support

Need any assistance? [Get in touch with Customer Support](mailto:support@apilayer.net?subject=%streetlayer%5D).

---

## Updates
Stay up to date by following [@apilayernet](https://twitter.com/apilayernet) on Twitter.

---

## Legal

All usage of the streetlayer website, API, and services is subject to the [StreetLayer Terms & Conditions](https://streetlayer.com/terms) and all annexed legal documents and agreements.

---

## Author
Peter Andreas Moelgaard ([GitHub](https://github.com/pmoelgaard), [Twitter](https://twitter.com/petermoelgaard))

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2017 Peter Andreas Moelgaard & apilayer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

