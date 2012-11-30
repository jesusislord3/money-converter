module Base

	private
	
	def api_request(amount, from_currency, to_currency)
		http = Net::HTTP.new("www.google.com",80)
		resp = http.get("/ig/calculator?hl=en&q=#{amount}#{from_currency}=?#{to_currency}")
		data = resp.body
		format_amount_exchanged(data)
	end

	def format_amount_exchanged(data)
		array = data.split('"')
		amount_exchanged = array[3].split
		result = amount_exchanged[0].gsub(/[\xA0]/n, '')
		"#{result} #{@to_currency}".to_f
	end

end