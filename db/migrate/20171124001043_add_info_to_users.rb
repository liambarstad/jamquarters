class AddInfoToUsers < ActiveRecord::Migration[5.1]
  def change
      change_table :users do |t|
        t.string :username
        t.integer :role
        t.text :bio
        t.string :image
        t.string :first_name
        t.string :last_name
      end
  end
end
