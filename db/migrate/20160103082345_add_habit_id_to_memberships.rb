class AddHabitIdToMemberships < ActiveRecord::Migration
  def change
    add_column :memberships, :habit_id, :integer
  end
end
