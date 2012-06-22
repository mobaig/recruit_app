class DropAgentsTable < ActiveRecord::Migration
  def up
    drop_table :agents
  end

  def down
    create_table :agents do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
