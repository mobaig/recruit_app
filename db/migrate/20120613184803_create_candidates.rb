class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.string :github
      t.string :linkedin
      t.string :website
      t.string :coding_test
      t.references :state, :default => 1, :null => false
      t.string :cv

      t.timestamps
    end
  end
end
