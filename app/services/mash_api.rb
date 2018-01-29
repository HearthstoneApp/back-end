class MashApi

	BASE_URI = "https://omgvamp-hearthstone-v1.p.mashape.com/cards"

	## MASH API CALLS

	def cards_by_cost(cost)
		Rails.logger.info "pulling cards that cost #{cost}."
		response = HTTParty.get("#{BASE_URI}?cost=#{cost}",
		headers: { "X-Mashape-Key" => "qYq2t5tNu1mshlzPhXM9ewBthRm1p1LzScsjsnVhNPTn3BYoxC" })
	end

	def cards_by_quality(quality)
		Rails.logger.info "pulling cards of #{quality} quality."
		response = HTTParty.get("#{BASE_URI}/qualities/Epic", 
		 headers:{ "X-Mashape-Key" => "qYq2t5tNu1mshlzPhXM9ewBthRm1p1LzScsjsnVhNPTn3BYoxC" })
	end
end
