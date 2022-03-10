class Incident < ApplicationRecord
  has_one_attached :image_incident
  has_rich_text :descripcion

  validates :asunto, :descripcion, :image_incident, presence: true
  # Associations
  belongs_to :user
end
