class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.integer :initial_price
      t.string :description
      t.string :item
      t.integer :duration_in_minutes
      t.datetime :started_at
      t.boolean :active, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
