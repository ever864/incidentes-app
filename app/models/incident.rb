class Incident < ApplicationRecord
  has_rich_text :descripcion

  validates :asunto, :descripcion, presence: true
  # Associations
  belongs_to :user
end
