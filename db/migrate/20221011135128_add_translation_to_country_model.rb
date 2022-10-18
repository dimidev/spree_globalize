class AddTranslationToCountryModel < ActiveRecord::Migration[4.2]
  def change
    unless table_exists?(:spree_country_translations)
      params = { name: :string }
      Spree::Country.create_translation_table!(params, { migrate_data: true })
    end
  end
end
