class Book < ApplicationRecord

  has_one_attached :image_id

  belongs_to :genre
  belongs_to :customer
  has_many :cart_items, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :book_comments, dependent: :destroy

  def get_image
    unless image_id.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image_id.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
      image_id
  end

  # いいね機能
  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end
end
