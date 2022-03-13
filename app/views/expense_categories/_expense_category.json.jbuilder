json.extract! expense_category, :id, :user_id, :name, :description, :active, :universal, :created_at, :updated_at
json.url expense_category_url(expense_category, format: :json)
