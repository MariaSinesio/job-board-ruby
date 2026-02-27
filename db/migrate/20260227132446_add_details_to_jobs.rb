class AddDetailsToJobs < ActiveRecord::Migration[8.0]
  def change
    add_column :jobs, :salary_max, :decimal
    add_column :jobs, :salary_min, :decimal
  end
end
