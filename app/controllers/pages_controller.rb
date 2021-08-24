class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @auctions = Auction.all
  end
end
