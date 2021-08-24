class AuctionsController < ApplicationController
  def index
    @auction = Auction.all
  end
end
