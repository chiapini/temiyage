class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.text       :contact_text
      t.integer    :opinion_id,        null: false
      t.references :user, null: false, foreign_key: true
      t.string :name,           null: false
      t.timestamps
    end
  end
end
