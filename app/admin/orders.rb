ActiveAdmin.register Order do
  filter :created_at, :as => :date_range
  filter :updated_at, :as => :date_range
end
