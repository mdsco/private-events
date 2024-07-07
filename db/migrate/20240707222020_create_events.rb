class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.timestamps

      t.string :title
      t.string :location
      t.datetime :date
    end
  end
end
