class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :name
      t.uuid :user_id
      t.string :ownername
      t.string :ownercpfnumber
      t.string :accountnumber
      t.integer :securitycode
      t.string :balancevalue
      t.string :accounttype

      t.timestamps
    end

    add_index :accounts, :user_id
  end
end
