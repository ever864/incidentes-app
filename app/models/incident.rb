class Incident < ApplicationRecord
  has_rich_text :descripcion

  
  # Associations
  belongs_to :user
end
