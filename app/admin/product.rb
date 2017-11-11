ActiveAdmin.register Product do
  permit_params :name, :price, :active, :category_id

  form title: 'A custom title' do |f|
    inputs 'Details' do
      input :name
      input :price
      input :active, as: :radio
      input :category, include_blank: false
      actions
    end

  end
end
