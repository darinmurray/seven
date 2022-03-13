class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :expense_category, null: false, foreign_key: true
      t.string :expense_type
      t.string :name, null: false
      t.decimal :amount, precision: 9, scale: 2
      t.integer :interval, null: false, default: 4
      t.decimal :min_payment, precision: 9, scale: 2
      t.decimal :generated_payment, precision: 9, scale: 2
      t.decimal :balance_at_entry, precision: 9, scale: 2
      t.date :due_date
      t.float :interest_rate
      t.float :min_pmnt_calc_percent
      t.decimal :avg_monthly_cost, precision: 9, scale: 2
      t.references :mortgage, null: false, foreign_key: true
      t.references :heloc, null: false, foreign_key: true

      t.timestamps
    end
  end
end





