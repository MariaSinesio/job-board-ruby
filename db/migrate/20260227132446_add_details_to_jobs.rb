class AddDetailsToJobs < ActiveRecord::Migration[8.0]
  def change
    add_column :jobs, :salary_max, :decimal, precision: 24
    add_column :jobs, :salary_min, :decimal, precision: 24
  end
end
