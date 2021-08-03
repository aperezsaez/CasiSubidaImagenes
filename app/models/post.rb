class Post < ApplicationRecord
  has_one_attached :file_gabriel
  # has_one :file_attachment, dependent: :destroy
  # has_one :file_blob, though: :file_attachment
  # validate :acceptable_file
  validates :file_gabriel, presence: true, blob: {content_type: ["image/jpeg", "image/png", "application/pdf"], size_range: 0..5.megabytes}
  

  # def acceptable_file
  #   return unless file_gabriel.attached?

  #   unless file_gabriel.byte_size <= 1.megabyte
  #     errors.add(:file_gabriel, "Muy grande po")
  #   end

  #   acceptable_types = ["image/jpeg", "image/png", "application/pdf"]
    
  #   unless acceptable_types.include?(file_gabriel.content_type)
  #     errors.add(:file_gabriel, "Mal formato")
  #   end
  # end
  
end
