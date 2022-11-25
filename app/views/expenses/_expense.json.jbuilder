json.extract! expense, :id, :Name, :Amount, :created_at, :updated_at
json.url expense_url(expense, format: :json)
