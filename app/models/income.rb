class Income < ApplicationRecord
  belongs_to :user

  # put some logic here to handle average monthly incomes
  # use input on the form for ammount and interval, 
  # extrapolate from there
  # 37 per day = 37*28
  # 1000 bi-anual payment = 1000/6
  # etc.



 # @user = current_account.user
  # def user 
  #     self.user_id.to_s 
  # end 

   #@incomeXX = current_account.user.incomes.sum('avg_monthly_income' )

   #@incomeXX = Income.user(user).sum('avg_monthly_income' )

end
