ActiveAdmin.register Product do
 
  permit_params :name, :price, :pr_description, :group, :group_id, {images: []}, images_attributes: [:id, :file, :_destroy]

  index do
    selectable_column
    id_column
    column "Товар", :name
    column "Цена", :price
    #column "Описание", :pr_description
    column "Группа", :group
    column "ID Группы", :group_id
    column "Фото", :images do |product|
      product.images.map{|i| image_tag(i.file_url(:thumb)) }.join('<br>').html_safe
    end
    #column "Обновлено", :updated_at
    #column "Создано", :created_at
    actions
  end

  

  filter :name

  form do |f|
    f.inputs "Product" do
      f.input :name
      f.input :price
      f.input :pr_description
      f.input :group
      f.input :group_id
      f.has_many :images do |p|
        if p.object.new_record?
          p.input :file
            else
              p.input :_destroy, as: :boolean, required: :false, label: 'Remove image'
              p.input :file, :as => :file, required: false, :hint => p.template.image_tag(p.object.file.url(:thumb))
            end
        end
    end
    f.actions
  end

end