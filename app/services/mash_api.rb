class MashApi

	BASE_URI = "https://omgvamp-hearthstone-v1.p.mashape.com/"

	## MASH API CALLS

	def get_all_cards(cost)
		Rails.logger.info "pulling cards that cose #{cost}"
		response = HTTParty.get("#{BASE_URI}/#{cost}",
		headers: { "X-Mashape-Key" => "qYq2t5tNu1mshlzPhXM9ewBthRm1p1LzScsjsnVhNPTn3BYoxC" })
	end





end
