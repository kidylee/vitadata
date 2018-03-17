class CreateEncriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :encriptions do |t|
      t.string :name
      t.string :value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
