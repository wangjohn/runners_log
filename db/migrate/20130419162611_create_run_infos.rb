class CreateRunInfos < ActiveRecord::Migration
  def change
    create_table :run_infos do |t|
      t.boolean :windy
      t.boolean :treadmill
      t.boolean :hilly
      t.boolean :rainy

      t.timestamps
    end
  end
end
