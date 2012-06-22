class AddInterviewDateToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :interview_date, :date
  end
end
