class AddOpenedToGifts < ActiveRecord::Migration[5.2]
  def change
    add_column :gifts, :opened, :boolean, default: false
  end
end
