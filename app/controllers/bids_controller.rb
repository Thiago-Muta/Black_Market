class BidsController < ApplicationController
  def index
    @bids = Bid.all
  end

  def new
    @bid = Bid.new
  end

  def create
    @auction = Auction.find(params[:auction_id])
    @bid = Bid.new(
      auction: @auction,
      user: current_user,
      price: @auction.bids.present? ? @auction.bids.last.price + rand(1..15) : @auction.initial_price
    )

    if @bid.save
      redirect_to @auction, notice: 'bid was successfully created.'
    else
      render :new
    end
  end
end
