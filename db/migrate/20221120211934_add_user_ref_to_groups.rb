# frozen_string_literal: true

class AddUserRefToGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :user, foreign_key: true
  end
end
