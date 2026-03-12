class AddReferencesToJobs < ActiveRecord::Migration[8.0]
  def change
    add_reference :jobs, :locales, foreign_key: true
  end
end
