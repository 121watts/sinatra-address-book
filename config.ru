$: << File.dirname(__FILE__)
require 'address_book'

use Rack::Session::Cookie, secret: ENV["MY_APP_SECRET"]
use Rack::Protection, use: :authenticity_token

run AddressBook.new
