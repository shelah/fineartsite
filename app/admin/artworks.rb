ActiveAdmin.register Artwork do
  filter :series
  filter :title
  filter :medium
  filter :year

  form :partial => "form"

  index do
    column("Artwork", :sortable => :id) {|artwork| link_to "##{artwork.id} ", admin_artwork_path(artwork) }
    column :series
    column :title
    column :medium
    column :year
  end
end
