ActiveAdmin.register Instruction do

  permit_params :title, :text, {images: []}, 
                images_attributes: [:id, :file, :_destroy]

  index do
    selectable_column
    id_column
    column "Название", :title
    column "Описание", :text
    column "Фото", :images do |instruction|
      instruction.images.map{|i| image_tag(i.file_url(:thumb)) }.join('<br>').html_safe
    end
    column "Обновлено", :updated_at
    column "Создано", :created_at
    actions
  end

  filter :title

  form(html: { multipart: true }) do |f|
    f.inputs "Instruction" do
      f.input :title
      f.input :text
      f.has_many :images do |p|
        if p.object.new_record?
          p.input :file
            else
              p.input :_destroy, as: :boolean, required: :false, label: 'Удалить фото'
              p.input :file, :as => :file, required: false, :hint => p.template.image_tag(p.object.file.url(:thumb))
            end
        end
    end
    f.actions
  end
end