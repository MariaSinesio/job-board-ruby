class AddDetailsToLocales < ActiveRecord::Migration[8.0]
  def change
    add_column :locales, :state, :string, limit: 5
    add_column :locales, :city, :string, comment: "Inclui município dentro da classificação de cidade"
    add_column :locales, :neighbourhood, :string
  end
end

