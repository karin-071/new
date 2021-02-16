class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :image
  
  # 検索用
  # def User.search(search)
  #   User.where(['name LIKE ?', "%#{search}%"])
  # end
end
