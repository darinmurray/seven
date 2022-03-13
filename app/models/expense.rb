class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :expense_category
  belongs_to :mortgage
  belongs_to :heloc
end
