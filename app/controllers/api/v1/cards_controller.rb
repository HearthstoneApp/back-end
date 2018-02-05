class Api::V1::CardsController < Api::V1::BaseController
	def index
		respond_with Card.all
	end

	def create
		respond_with :api, :v1, Card.create(card_params)
	end

	def destroy
		respond_with Card.destroy(params[:id])
	end

	def update
		card = Card.find(params["id"])
		card.update_attributes(card_params)
		respond_with card, json: card
	end

	private

	def card_params
		params.require(:item).permit(:id, :cardID, :name, :description)
	end
end