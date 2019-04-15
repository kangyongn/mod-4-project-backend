class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :note
      t.string :img
      t.string :sender_id
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
