require 'rails_helper'

RSpec.describe ExpensesController, type: :request do
  describe "GET './index' page" do
    before(:all) do
      @address = get '/expenses'
    end

    it 'it should return a valid status' do
      expect(@address).to eq(302)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/expenses/show'
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/expenses/new'
      expect(response).to have_http_status(302)
    end
  end
end
