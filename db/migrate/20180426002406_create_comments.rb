class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :assignment, foreign_key: true
      t.references :collaborator, foreign_key: true
      t.text :comment
      t.date :date

      t.timestamps
    end
  end
end
