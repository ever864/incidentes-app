class Incident < ApplicationRecord
  has_rich_text :descripcion

  validates :asunto, presence: true
  # Associations
  belongs_to :user
end
