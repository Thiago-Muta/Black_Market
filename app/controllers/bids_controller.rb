class BidsController < ApplicationController
  def index
    @bids = Bid.all
  end

  def new
    @bid = Bid.new
  end

  def create
    @auction = Auction.find(params[:auction_id])

    if @auction.status
      price = @auction.bids.empty? ? @auction.initial_price : @auction.bids.last.price + rand(11..83)
      @bid = Bid.new(
        auction: @auction,
        user: current_user,
        price: price
      )
      if @bid.save
        redirect_to @auction, notice: 'bid was successfully created.'
      else
        render :new
      end
    else
      redirect_to @auction, alert: 'Auction already closed!'
    end
  end

end
