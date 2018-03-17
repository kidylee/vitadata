class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks do |t|
      t.integer :height

      t.timestamps
    end
  end
end
