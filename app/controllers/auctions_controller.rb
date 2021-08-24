class AuctionsController < ApplicationController
  def index
    @auctions = Auction.all
  end


  def new
    @auctions = Auction.new
  end

  def create
    @auctions = Auction.new
    @auctions.save
  end
end
