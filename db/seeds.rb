# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# create users 
User.create(name: "John Doe", email: "Hatim@gmail.com", password: "password", password_confirmation: "password" )
# create groups
#group1 = Group.create(name: "Family", icon: "https://www.flaticon.com/svg/static/icons/svg/3135/3135715.svg", user_id: 1)
#group2 = Group.create(name: "Friends", icon: "https://www.flaticon.com/svg/static/icons/svg/3135/3135715.svg", user_id: 1)
group3 = Group.create(name: "Work", icon: "https://www.flaticon.com/svg/static/icons/svg/3135/3135715.svg", user_id: 1)

#10.times do |i|
  #group1.expenses.create(name: "Expense #{i}", amount: rand(1..100))
 # group2.expenses.create(name: "Expense #{i}", amount: rand(1..100))
#end

# add group Ref to Expense

rails g migration AddGroupRefToExpense expenses:references 
AddExpenseRefToGroup groups:references