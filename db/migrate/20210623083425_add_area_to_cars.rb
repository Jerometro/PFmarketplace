class AddAreaToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :area, :string
  end
end
