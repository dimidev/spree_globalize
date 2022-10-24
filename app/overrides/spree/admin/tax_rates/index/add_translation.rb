Deface::Override.new(
  virtual_path:  'spree/admin/tax_rates/index',
  name:          'tax_rates_index_translation',
  insert_top:    'td.actions > span.d-flex',
  text:          <<-HTML
                  <%= link_to_with_icon 'translate', nil, spree.admin_translations_path('tax_rates', tax_rate.id), title: Spree.t(:'i18n.translations'), class: 'btn btn-sm btn-primary' %>
                HTML
)
