class Rpush331Updates < ActiveRecord::VERSION::MAJOR >= 5 ? ActiveRecord::Migration[5.0] : ActiveRecord::Migration
  def self.up
    change_column :rpush_notifications, :device_token, :text, null: true
    change_column :rpush_feedback, :device_token, :text, null: true
  end

  def self.down
    change_column :rpush_notifications, :device_token, :string, { null: true, limit: 64 }
    change_column :rpush_feedback, :device_token, :string, { null: true, limit: 64 }
  end
end