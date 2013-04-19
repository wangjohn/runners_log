class DeviseCreateRunners < ActiveRecord::Migration
  def self.up
    create_table(:runners) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :runners, :email,                :unique => true
    add_index :runners, :reset_password_token, :unique => true
    # add_index :runners, :confirmation_token,   :unique => true
    # add_index :runners, :unlock_token,         :unique => true
    # add_index :runners, :authentication_token, :unique => true
  end

  def self.down
    drop_table :runners
  end
end
