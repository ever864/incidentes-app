class Incident < ApplicationRecord
  # Associations
  has_one_attached :image_incident
  has_rich_text :descripcion
  belongs_to :user
  
  # Validations
  validates :asunto, :descripcion, :image_incident, presence: true
  validate :acceptable_image

  after_save :notify_user

  private

  def notify_user
    PostMailer.with(user: user.id, incident: self.id).post_created.deliver_later
  end

  def acceptable_image
    return unless image_incident.attached?
  
    unless image_incident.byte_size <= 1.megabyte
      errors.add(:image_incident, "is too big")
    end
  
    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(image_incident.content_type)
      errors.add(:image_incident, "must be a JPEG or PNG")
    end
  end
end
