class AddPictureToProduct < ActiveRecord::Migration[5.0]
  def up
    add_attachment :products, :picture
  end

  def down
    remove_attachment :products, :picture
  end
end
