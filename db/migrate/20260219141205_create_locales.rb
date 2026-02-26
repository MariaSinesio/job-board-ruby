class CreateLocales < ActiveRecord::Migration[8.0]
  def change
    create_table :locales do |t|
      t.string :locale

      t.timestamps
    end
  end
end
