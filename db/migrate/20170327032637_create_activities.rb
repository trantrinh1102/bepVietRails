class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.references :user, null: false
      t.integer :target_id
      t.integer :target_type
      t.integer :action_type
      t.timestamps
    end
  end
end
