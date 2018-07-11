class AddIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user, :uuid, default: "uuid_generate_v4()"
  end
end
