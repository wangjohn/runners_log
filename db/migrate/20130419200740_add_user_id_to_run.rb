class AddUserIdToRun < ActiveRecord::Migration
  def change
    add_column :runs, :user_id, :integer
  end
end
