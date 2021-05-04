class AddPhotoToLaptop < ActiveRecord::Migration[6.0]
  def change
    add_column :laptops, :photo, :string
  end
end
