class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :fullname
      t.text :phone_num
      t.string :website
      t.string :linkedin
      t.string :twitter
      t.string :github
      t.text :summary

      t.timestamps
    end
  end
end
