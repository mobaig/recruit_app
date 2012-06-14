class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :author
      t.text :body
      t.references :candidate

      t.timestamps
    end
  end
end
