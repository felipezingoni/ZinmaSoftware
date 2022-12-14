class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                 format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

  has_one_attached :avatar
  validate :avatar_format

  private

  def avatar_format
    return unless avatar.attached?
    return if avatar.blob.content_type.start_with? 'image/'
    avatar.purge_later
    errors.add(:avatar, 'needs to be an image')
  end
end
