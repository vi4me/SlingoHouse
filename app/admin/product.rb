ActiveAdmin.register Product do
 
  permit_params :name, :price, :pr_description, :group, :group_id, :picture

  index do
    selectable_column
    id_column
    column "Товар", :name
    column "Цена", :price
    #column "Описание", :pr_description
    column "Группа", :group
    column "ID Группы", :group_id
    column "Фото", :picture do |ad|
        image_tag ad.picture.url(:thumb)
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
      
    end
    f.actions
  end

end