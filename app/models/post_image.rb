class PostImage < ApplicationRecord

belongs_to :user
attachment :image

has_many :favorites,dependent: :destroy

validates :title, presence: true
validates :image, presence: true

def favorited_by?(user)
 favorites.where(user_id: user.id).exists?
end

end
