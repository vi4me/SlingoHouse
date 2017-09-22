ActiveAdmin.register Group do
  permit_params :title, :text, :picture

  index do
    selectable_column
    id_column
    column "Название", :title
    column "Описание", :text
    column "Фото", :picture do |ad|
        image_tag ad.picture.url(:thumb)
    end
    column "Обновлено", :updated_at
    column "Создано", :created_at
    actions
  end

  filter :title

  form do |f|
    f.inputs "Group" do
      f.input :title
      f.input :text
      f.input :picture
  end
    f.actions
  end
 
end