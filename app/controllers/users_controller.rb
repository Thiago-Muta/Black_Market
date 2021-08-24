class UsersController < ApplicationController
  def index
    @auctions = Auction.all
  end

end
