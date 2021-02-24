class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :image
  
  #追記
  def self.search(search)
      if search
        User.where(['content LIKE ?', "%#{search}%"])
      else
        User.all
      end
  end
  
end
