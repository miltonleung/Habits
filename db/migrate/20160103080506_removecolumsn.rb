class Removecolumsn < ActiveRecord::Migration
  def change
    remove_column :memberships, :group_id
  end
end
