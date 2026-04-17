class FixLocaleColumnName < ActiveRecord::Migration[8.0]
    def change
    if column_exists?(:jobs, :locales_id)
      remove_reference :jobs, :locales, foreign_key: true
    end

    add_reference :jobs, :locale, foreign_key: true

    change_column :jobs, :salary_max, :decimal, precision: 10, scale: 2
    change_column :jobs, :salary_min, :decimal, precision: 10, scale: 2
    end
end
