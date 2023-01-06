class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :ownercpfnumber
      t.string :accountnumber
      t.integer :securitycode
      t.string :balancevalue
      t.string :accounttype

      t.timestamps
    end
  end
end
