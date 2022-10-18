class AddTranslationToTaxRateModel < ActiveRecord::Migration[4.2]
  def change
    unless table_exists?(:spree_tax_rate_translations)
      params = { name: :string }
      Spree::TaxRate.create_translation_table!(params, { migrate_data: true })
    end
  end
end
