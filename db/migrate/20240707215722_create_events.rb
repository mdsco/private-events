class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.timestamps

      t.string :title
      t.datetime :date
      t.string :location
      t.references :user, null: false, foreign_key: true
    end
  end
end
