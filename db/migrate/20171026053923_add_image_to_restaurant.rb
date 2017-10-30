class AddImageToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :image, :string
    # add_column table , column , datatype
  end
end
