class RemoveUserIdAndReplaceWithRunnerId < ActiveRecord::Migration
  def change
    drop_column :runs, :user_id
    drop_column :run_histories, :user_id
    add_column :runs, :runner_id, :integer
    add_column :run_histories, :runner_id, :integer
  end
end
