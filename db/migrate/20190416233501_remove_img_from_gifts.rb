class RemoveImgFromGifts < ActiveRecord::Migration[5.2]
  def change
    remove_column :gifts, :img, :string
  end
end
