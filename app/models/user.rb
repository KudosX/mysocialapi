class User < ApplicationRecord

  has_many :identities

  def self.create_with_omniauth(info)
    create(name: info['name'])
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
