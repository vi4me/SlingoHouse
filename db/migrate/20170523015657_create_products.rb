class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|

      t.integer :price
      t.string :name
      t.string :pr_description
      t.references :group, foreign_key: true
      t.timestamps
    end
  end
end
