class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.float :distance
      t.float :duration
      t.text :comments

      t.timestamps
    end
  end
end
