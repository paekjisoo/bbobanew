class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.integer :amount
      t.integer :user_num
      t.boolean :deposit
      

      t.timestamps
    end
  end
end