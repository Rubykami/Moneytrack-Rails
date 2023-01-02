class AddAccountRefToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :accounts, :user , null: false, type: :uuid, index: true, foreign_key: true
  end
end
