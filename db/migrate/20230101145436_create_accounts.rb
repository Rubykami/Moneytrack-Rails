class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :name
      t.string :ownercpfnumber
      t.string :accountnumber
      t.integer :securitycode
      t.string :balancevalue
      t.string :accounttype
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
