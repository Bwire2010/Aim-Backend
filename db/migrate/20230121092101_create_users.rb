class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :role
      t.string :password_digest
      t.string :companyname
      t.integer :phonenumber
      t.string :companysize
      t.string :industry

      t.timestamps
    end
  end
end
