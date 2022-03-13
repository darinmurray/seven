class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.float :avg_monthly_income, null: false, default: 1000
      t.integer :interval, null: false, default: 2
      t.decimal :amount, null: false, precision: 9, scale: 2

      t.timestamps
    end
  end
end
