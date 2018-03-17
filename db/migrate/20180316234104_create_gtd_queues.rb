class CreateGtdQueues < ActiveRecord::Migration
  def change
    create_table :gtd_queues, { :id => false } do |t|
      t.uuid :id, null: false, default: 'uuid_generate_v4()'
      t.string :name
      t.text :description
      
      t.timestamps null: false
    end
    add_index :gtd_queues, :id, unique: true
  end
end
