class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.references :dog, foreign_key: true
      t.references :dogsitter, foreign_key: true
      t.string :stroll_name
      t.timestamps
    end
  end
end
