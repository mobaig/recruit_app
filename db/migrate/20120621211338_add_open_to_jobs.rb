class AddOpenToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :open, :boolean
  end
end
