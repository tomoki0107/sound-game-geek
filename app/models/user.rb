class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :nickname, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # 半角英数字をそれぞれ1種類以上含む8文字以上100文字以下の正規表現
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i.freeze
  has_one_attached :profile_image
end

