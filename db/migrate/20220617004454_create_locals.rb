class CreateLocals < ActiveRecord::Migration[6.0]
  def change
    create_table :locals do |t|
      t.string   :shop_name,         null: false
      t.text     :information,       null: false
      t.references :user, null: false, foreign_key: true
      t.integer :area_id, null: false
      t.integer  :prefecture_id,     null: false
      t.integer  :category_id,       null: false
      t.timestamps
    end
  end
end
