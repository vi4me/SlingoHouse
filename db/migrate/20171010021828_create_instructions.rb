class CreateInstructions < ActiveRecord::Migration[5.0]
  def change
    create_table :instructions do |t|
    	t.string :title
      	t.text :text

      t.timestamps
    end
  end
end
