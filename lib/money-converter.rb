require 'rubygems'
require 'net/http'
require 'json'


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
		format_amount_exchanged(data)		
		#result = JSON(r.gsub(/([\w]+):/, '"\1":'))
	end

	def format_amount_exchanged(data)
		array = data.split('"')
		amount_exchanged = array[3].split
		result = amount_exchanged[0].gsub(/[\xA0]/n, '')
		"#{result} #{@to_currency}".to_sym
	end

end
