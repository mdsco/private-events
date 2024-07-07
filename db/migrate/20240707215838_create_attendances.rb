class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.timestamps

      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
    end

    add_index :attendances, [:user_id, :event_id], unique: true
  end
end
