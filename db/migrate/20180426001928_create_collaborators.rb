class CreateCollaborators < ActiveRecord::Migration[5.1]
  def change
    create_table :collaborators do |t|
      t.string :name
      t.string :paterno
      t.string :materno
      t.references :job, foreign_key: true
      t.references :department, foreign_key: true
      t.date :registration_date

      t.timestamps
    end
  end
end
