class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :title
      t.string :action

      t.timestamps null: false
    end
  end
end
