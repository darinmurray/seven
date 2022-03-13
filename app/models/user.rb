class User < ApplicationRecord
  belongs_to :account
  has_many :incomes



  #@foo = @user.incomes.sum('avg_monthly_income' )


  #@user = current_account.user
  # def user 
  #     self.user_id.to_s 
  # end 

  def monthly_income
   User.first.incomes.sum('avg_monthly_income' )
  end




end
