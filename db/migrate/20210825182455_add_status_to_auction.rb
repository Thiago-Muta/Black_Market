class AddStatusToAuction < ActiveRecord::Migration[6.0]
  def change
    add_column :auctions, :status, :boolean, default: true
  end
end
