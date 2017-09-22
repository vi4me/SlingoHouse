class AddPictureToGroup < ActiveRecord::Migration[5.0]
  def up
    add_attachment :groups, :picture
  end

  def down
    remove_attachment :groups, :picture
  end
end
