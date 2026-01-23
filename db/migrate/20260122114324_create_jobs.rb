class CreateJobs < ActiveRecord::Migration[8.0]
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :name
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
