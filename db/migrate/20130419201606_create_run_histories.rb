class CreateRunHistories < ActiveRecord::Migration
  def change
    create_table :run_histories do |t|
      t.integer :user_id
      t.float :avg_duration
      t.float :avg_distance

      t.timestamps
    end
  end
end
