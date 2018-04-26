class CreatePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :permissions do |t|
      t.references :assignment, foreign_key: true
      t.references :collaborator, foreign_key: true

      t.timestamps
    end
  end
end
