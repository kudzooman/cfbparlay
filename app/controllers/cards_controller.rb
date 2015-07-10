class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(params.require(:card).permit(:title, :body))
      if @card.save
        flash[:notice] = "Bet placed."
        redirect_to @card
      else
        flash[:error] = "There was an error with your bet. Try again."
        render :new
      end
  end

  def edit
  end
end
