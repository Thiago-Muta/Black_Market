class AuctionsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @auctions = Auction.all
    if params[:query]
      @auctions = Auction.joins(:user).where("
      auctions.item @@ :batata OR
      users.first_name @@ :batata OR
      users.last_name @@ :batata
      ", batata: params[:query])
    end
  end

  def show
    @auction = Auction.find(params[:id])
    @bid = @auction.bids.last
  end

  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new(auctions_params)
    @auction.user = current_user

    if @auction.save
      redirect_to auction_path(@auction)
    else
      render :new
    end
  end

  def edit
    @auction = Auction.find(params[:id])
  end

  def update
    @auction = Auction.find(params[:id])
    if @auction.update(auctions_params)
      redirect_to auction_path(@auction), notice: 'auction updated successfully'
    else
      render :edit
    end
  end

  def destroy
    @auction = Auction.find(params[:id])
    @auction.destroy
    redirect_to auctions_path
  end

  def close
    @auction = Auction.find(params[:auction_id])
    @auction.update!(status: false)
    redirect_to auction_path(@auction)
  end

  private

  def auctions_params
    params.require(:auction).permit(:item, :description, :initial_price, :photo)
  end
end
