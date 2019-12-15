class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reverses_of_favorite, class_name: 'favorite', foreign_key: 'micropost_id'
  has_many :liked, through: :reverses_of_favorite, source: :user
  
  # def like(micropost)
  # 	self.favorites.find_or_create_by(micropost_id: micropost.id)
  # end
  
  # def unlike(micropost)
  # 	favorite = self.favorites.find_by(micropost_id: micropost.id)
  # 	favorite.destroy if favorite
  # end	
  
  # def liking?(micropost)
  # 	self.likes.include?(micropost)
  # end
  
end
