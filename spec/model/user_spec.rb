# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = User.new(
      name: 'Ambrose Isigba',
      email: 'titi@gmail.com',
      password: '123456'
    )
  end

  it '@user created should be valid' do
    expect(@user).to be_valid
  end

  it 'name value should be present' do
    @user.name = 'Ambrose Isigba'
    expect(@user.name).to eq('Ambrose Isigba')
  end
end
