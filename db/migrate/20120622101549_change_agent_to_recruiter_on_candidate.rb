class ChangeAgentToRecruiterOnCandidate < ActiveRecord::Migration
  def up
    rename_column :candidates, :agent_id, :recruiter_id
  end

  def down
    rename_column :candidates, :recruiter_id, :agent_id
  end
end
