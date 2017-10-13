class AddFavoritToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :favorit, :boolean, :default => false
  end
end
