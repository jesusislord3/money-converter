require 'rubygems'
require 'net/http'
require 'base'

class MoneyConverter
	include Base

	def initialize(from_currency, to_currency, amount)
		@from_currency = from_currency
		@to_currency = to_currency
		@amount = amount
	end

	def exchange
		api_request(@amount, @from_currency, @to_currency)
	end

end
