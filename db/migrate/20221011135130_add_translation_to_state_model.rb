class AddTranslationToStateModel < ActiveRecord::Migration[4.2]
  def change
    unless table_exists?(:spree_state_translations)
      params = { name: :string }
      Spree::State.create_translation_table!(params, { migrate_data: true })
    end
  end
end
