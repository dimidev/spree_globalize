Deface::Override.new(
  virtual_path:  'spree/admin/payment_methods/index',
  name:          'payment_methods_index_translation',
  insert_top:    'td.actions > span.d-flex',
  text:          <<-HTML
                  <%= link_to_with_icon 'translate', nil, spree.admin_translations_path('payment_methods', method.id), title: Spree.t(:'i18n.translations'), class: 'btn btn-sm btn-primary' %>
                HTML
)
