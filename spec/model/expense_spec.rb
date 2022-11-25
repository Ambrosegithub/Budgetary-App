require 'rails_helper'

RSpec.describe Expense, type: :model do
  before(:all) do
    @user = User.create(
      name: 'Ambrose',
      email: 'ambrisexyz@gmail.com',
      password: '123456'
    ),

            @group = Group.create(
              user_id: 1,
              name: 'Rice',
                icon: 'https://www.flaticon.com/svg/static/icons/svg/3135/3135715.png'
            ),
            @expense = Expense.create(
                user_id: 1,
                name: 'Rice',
                amount: 100,
                group_id: 1

            )
           
  end

  it '@recipefood created should be valid' do
    expect(@expense).to be_valid
  end

  it '@quantity must be an integer' do
    expect(@expense.name).to eq('Rice')
  end
  it '@group_id created should be valid' do
    expect(@expense.group_id).to eq(1)
  end
  it '@expense_id must be an integer greater than or equal zero.' do
    expect(@expense.amount).to eq(100)
  end
end
