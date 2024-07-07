class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.timestamps

      t.string :name
      t.string :email
    end

    add_index :users, :email, unique: true
  end
end
