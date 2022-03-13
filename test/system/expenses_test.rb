require "application_system_test_case"

class ExpensesTest < ApplicationSystemTestCase
  setup do
    @expense = expenses(:one)
  end

  test "visiting the index" do
    visit expenses_url
    assert_selector "h1", text: "Expenses"
  end

  test "should create expense" do
    visit expenses_url
    click_on "New expense"

    fill_in "Amount", with: @expense.amount
    fill_in "Avg monthly cost", with: @expense.avg_monthly_cost
    fill_in "Balance at entry", with: @expense.balance_at_entry
    fill_in "Due date", with: @expense.due_date
    fill_in "Expense category", with: @expense.expense_category_id
    fill_in "Expense type", with: @expense.expense_type
    fill_in "Generated payment", with: @expense.generated_payment
    fill_in "Heloc", with: @expense.heloc_id
    fill_in "Interest rate", with: @expense.interest_rate
    fill_in "Interval", with: @expense.interval
    fill_in "Min payment", with: @expense.min_payment
    fill_in "Min pmnt calc percent", with: @expense.min_pmnt_calc_percent
    fill_in "Mortgage", with: @expense.mortgage_id
    fill_in "Name", with: @expense.name
    fill_in "User", with: @expense.user_id
    click_on "Create Expense"

    assert_text "Expense was successfully created"
    click_on "Back"
  end

  test "should update Expense" do
    visit expense_url(@expense)
    click_on "Edit this expense", match: :first

    fill_in "Amount", with: @expense.amount
    fill_in "Avg monthly cost", with: @expense.avg_monthly_cost
    fill_in "Balance at entry", with: @expense.balance_at_entry
    fill_in "Due date", with: @expense.due_date
    fill_in "Expense category", with: @expense.expense_category_id
    fill_in "Expense type", with: @expense.expense_type
    fill_in "Generated payment", with: @expense.generated_payment
    fill_in "Heloc", with: @expense.heloc_id
    fill_in "Interest rate", with: @expense.interest_rate
    fill_in "Interval", with: @expense.interval
    fill_in "Min payment", with: @expense.min_payment
    fill_in "Min pmnt calc percent", with: @expense.min_pmnt_calc_percent
    fill_in "Mortgage", with: @expense.mortgage_id
    fill_in "Name", with: @expense.name
    fill_in "User", with: @expense.user_id
    click_on "Update Expense"

    assert_text "Expense was successfully updated"
    click_on "Back"
  end

  test "should destroy Expense" do
    visit expense_url(@expense)
    click_on "Destroy this expense", match: :first

    assert_text "Expense was successfully destroyed"
  end
end
