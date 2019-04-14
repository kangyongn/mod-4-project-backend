class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :note
      t.string :img
      t.integer :sender_id
      t.integer :receiver_id
      t.date :date

      t.timestamps
    end
  end
end
