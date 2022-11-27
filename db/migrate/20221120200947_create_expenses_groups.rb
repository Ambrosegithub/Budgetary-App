# frozen_string_literal: true

class CreateExpensesGroups < ActiveRecord::Migration[7.0]
  def change
    create_join_table :expenses, :groups do |t|
      t.index %i[expense_id group_id]

      t.timestamps
    end
  end
end
