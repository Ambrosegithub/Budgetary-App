# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:all) do
    @user = User.create(
      name: 'Ambrose',
      email: 'ambrisexyz@gmail.com',
      password: '123456'
    ),
            @group = Group.create(
              user_id: 1,
              name: 'Family',
              icon: 'https://www.flaticon.com/svg/static/icons/svg/3135/3135715.png'
            )
  end

  it '@group created should be valid' do
    expect(@group).to be_valid
  end

  it '@name must not be blank' do
    expect(@group.name).to eq('Family')
  end

  it '@icon must be a link to an image' do
    expect(@group.icon).to eq('https://www.flaticon.com/svg/static/icons/svg/3135/3135715.png')
  end

  it '@icon created should not  be valid' do
    expect(@group.icon).not_to eq(100)
  end
end
