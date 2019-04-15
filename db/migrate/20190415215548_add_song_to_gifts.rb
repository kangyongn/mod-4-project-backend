class AddSongToGifts < ActiveRecord::Migration[5.2]
  def change
    add_column :gifts, :song, :string
  end
end
