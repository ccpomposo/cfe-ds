class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.text :description
      t.date :start_date
      t.date :end_date
      t.references :collaborator, foreign_key: true
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
