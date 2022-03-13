module UsersHelper


    def have_income? 
    users_income = @user.incomes.sum('avg_monthly_income' )
    @empty = false
      if users_income == nil or users_income == 0 
        @empty = true
        @my_income = 0.0
        render :partial => "incomes/coaching_for_cashflow"
      else
       @my_income = number_to_currency(users_income, precision: 2) 
      end
    end  

 
    


    # def foo
    #     @foo = @user.incomes.sum('avg_monthly_income' )
    # end


end
