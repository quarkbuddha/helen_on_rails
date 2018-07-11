class AddUserToQueue < ActiveRecord::Migration
  def change
    add_column :gtd_queues, :user, :uuid
  end
end
