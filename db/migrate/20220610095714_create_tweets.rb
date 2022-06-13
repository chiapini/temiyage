class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string   :shop_name,         null: false
      t.string   :item_name,         null: false
      t.text     :information,       null: false
      t.string   :area,              null: false
      t.string   :capacity,          null: false
      t.string   :expiry,            null: false
      t.string   :keep,              null: false
      t.string   :allergy,           null: false
      t.string   :quantity,          null: false
      t.integer  :category_id,       null: false
      t.integer  :event_id
      t.integer  :search_id
      t.string   :price, null: false
      t.references :user, null: false, foreign_key: true
      t.string :url
      t.timestamps
    end
  end
end
