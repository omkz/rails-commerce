ActiveAdmin.register Product do
  permit_params :name, :price, :active, :category_id,
                # product_attribute_value_ids:[:product_id, :product_attribute_id, :value],
                product_attribute_values_attributes:[:product_id, :product_attribute_id, :value]


  show do
    panel "ProductAttribute" do
      table_for product.product_attribute_values do
        column "name" do |p|
          p.product_attribute.name
        end
        column :value
      end
    end
  end


  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :price
      f.input :active, as: :radio
      f.input :category, include_blank: false
    end

    f.has_many :product_attribute_values do |app_f|
      app_f.inputs "ProductAttributeValues" do
        if !app_f.object.nil?
          # show the destroy checkbox only if it is an existing appointment
          # else, there's already dynamic JS to add / remove new appointments
          # app_f.input :_destroy, :as => :boolean, :label => "Destroy?"
        end

        app_f.input :product_attribute # it should automatically generate a drop-down select to choose from your existing patients
        app_f.input :value
      end
    end
    f.actions
  end

  #
  # form title: 'A custom title' do |f|
  #   inputs 'Details' do
  #     input :name
  #     input :price
  #     input :active, as: :radio
  #     input :category, include_blank: false
  #     # input :product_attribute
  #     # input :product_attribute_value
  #     # f.input :technicians, as: :check_boxes, :collection => User.all.map{ |tech|  [tech.surname, tech.id] }
  #     f.input :product_attribute, as: :check_boxes, :collection => ProductAttributeValue.all.map{ |p|  [p.value, p.id] }
  #
  #     actions
  #   end
  # end


end
