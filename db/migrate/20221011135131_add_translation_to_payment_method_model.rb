class AddTranslationToPaymentMethodModel < ActiveRecord::Migration[4.2]
  def change
    unless table_exists?(:spree_payment_method_translations)
      params = { name: :string, description: :text }
      Spree::PaymentMethod.create_translation_table!(params, { migrate_data: true })
    end
  end
end
