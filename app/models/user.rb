class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include OmniauthAttributesConcern
    
  has_many :user_authentications

  devise :omniauthable, :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable

  def self.create_from_omniauth(params)
      self.send(params.provider,params)
  end
end
