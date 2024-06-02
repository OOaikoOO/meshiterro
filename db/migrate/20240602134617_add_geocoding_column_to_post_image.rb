class AddGeocodingColumnToPostImage < ActiveRecord::Migration[6.1]
  def change
    add_column :post_images, :address, :string, null: false, default: ""
    add_column :post_images, :latitude, :float, null: false, default: 0
    add_column :post_images, :longitude, :float, null: false, default: 0
  end
end
