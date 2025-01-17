Spree::Core::Engine.add_routes do
  namespace :admin do
    get '/:resource/:resource_id/translations' => 'translations#index', as: :translations
    patch '/option_values/:id' => 'option_values#update', as: :option_type_option_value
    patch 'product/:id/product_properties/:id' => "product_properties#translate", as: :translate_product_property
    patch 'payment_methods/:id/translate' => "payment_method_translations#translate", as: :translate_payment_method
    get '/countries/:country_id/:resource/:resource_id/translations' => 'state_translations#index', as: :state_translations
  end
end
