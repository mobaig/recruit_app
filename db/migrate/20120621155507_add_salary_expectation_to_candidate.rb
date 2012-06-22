class AddSalaryExpectationToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :salary_expectation, :integer
  end
end
