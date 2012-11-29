require 'rubygems'
require 'net/http'
require 'json'
	# Converts currency from one format to another, for example from USD to
	# EUR
	# from_curr the code for the currency that needs to be converted
	# to_curr the code for the currency that needs to be converted to
	# amount amount of money in from_curr

class MoneyConverter

	def initialize(from_currency, to_currency, amount)
		@from_currency = from_currency
		@to_currency = to_currency
		@amount = amount
	end

	def convert_currency
		api_request(@amount, @from_currency, @to_currency)
	end


	private

	def api_request(amount, from_currency, to_currency)
		http = Net::HTTP.new("www.google.com",80)
		resp = http.get("/ig/calculator?hl=en&q=#{amount}#{from_currency}=?#{to_currency}")
		data = resp.body
		result = JSON(data.gsub(/([\w]+):/, '"\1":'))
	end

end
