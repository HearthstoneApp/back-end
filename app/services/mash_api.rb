class MashApi
	require "awesome_print"

	BASE_URI = "https://omgvamp-hearthstone-v1.p.mashape.com/cards"

	## MASH API CALLS

	def cards_by_cost(card_cost)
		Rails.logger.info "pulling cards that cost #{card_cost}."
		response = HTTParty.get("#{BASE_URI}?cost=#{card_cost}",
		headers: { "X-Mashape-Key" => "qYq2t5tNu1mshlzPhXM9ewBthRm1p1LzScsjsnVhNPTn3BYoxC" })

		response.parsed_response
	end

	def cards_by_quality(card_quality)
		Rails.logger.info "pulling cards of #{card_quality} quality."
		response = HTTParty.get("#{BASE_URI}/qualities/#{card_quality}", 
		query: { format: "json" },
		headers:{ "X-Mashape-Key" => "qYq2t5tNu1mshlzPhXM9ewBthRm1p1LzScsjsnVhNPTn3BYoxC" })

		response.parsed_response
	end

	def cards_by_class(player_class)
		Rails.logger.info "pulling #{player_class} cards."
		response = HTTParty.get("#{BASE_URI}/classes/#{player_class}",
  		headers:{ "X-Mashape-Key" => "qYq2t5tNu1mshlzPhXM9ewBthRm1p1LzScsjsnVhNPTn3BYoxC" })

		response.parsed_response
	end

	def single_card(card_name)

		Rails.logger.info "pulling #{card_name}!"
		card_name = card_name.gsub(' ','%20')

		response = HTTParty.get("#{BASE_URI}/#{card_name}",
		query: { format: "json" },
		headers:{ 
			"X-Mashape-Key" => "qYq2t5tNu1mshlzPhXM9ewBthRm1p1LzScsjsnVhNPTn3BYoxC",
    		"Accept" => "application/json"
  				})

		response.parsed_response
	end

end

# figure out how to handle spaces in card name !!!!


# These code snippets use an open-source library. http://unirest.io/ruby
#response = Unirest.get "https://omgvamp-hearthstone-v1.p.mashape.com/cards/Leeroy%20Jenkins",
#  headers:{
#    "X-Mashape-Key" => "qYq2t5tNu1mshlzPhXM9ewBthRm1p1LzScsjsnVhNPTn3BYoxC",
#    "Accept" => "application/json"
#  }
