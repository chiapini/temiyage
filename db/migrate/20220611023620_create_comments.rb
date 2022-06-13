class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tweet, null: false, foreign_key: true
      t.text       :comment,       null: false
      t.integer    :scene_id,      null:false
      t.float      :rate, null: false, default: 0
      t.timestamps
    end
  end
end
