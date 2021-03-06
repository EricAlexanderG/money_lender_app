class CreateHistoriesTable < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :amount
      t.references :borrower, index: true, foreign_key: true
      t.references :lender, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
