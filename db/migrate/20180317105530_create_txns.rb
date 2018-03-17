class CreateTxns < ActiveRecord::Migration[5.1]
  def change
    create_table :txns do |t|
      t.string :txnid
      t.string :from
      t.references :block, foreign_key: true
      t.string :label
      t.string :address

      t.timestamps
    end
  end
end
