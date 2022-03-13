json.extract! expense, :id, :user_id, :expense_category_id, :expense_type, :name, :amount, :interval, :min_payment, :generated_payment, :balance_at_entry, :due_date, :interest_rate, :min_pmnt_calc_percent, :avg_monthly_cost, :mortgage_id, :heloc_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
