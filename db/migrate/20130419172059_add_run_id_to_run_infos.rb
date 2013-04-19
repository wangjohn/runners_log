class AddRunIdToRunInfos < ActiveRecord::Migration
  def change
    add_column :run_infos, :run_id, :integer
  end
end
