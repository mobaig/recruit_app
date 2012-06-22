class AddAgentIdToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :agent_id, :integer
  end
end
