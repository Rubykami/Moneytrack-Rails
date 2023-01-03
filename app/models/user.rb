# frozen_string_literal: true

class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable, :confirmable, :timeoutable
  
  
         include DeviseTokenAuth::Concerns::User
  
  
         has_many :accounts, dependent: :destroy


         validates_length_of :accounts, maximum: 2



  before_create {
    self.id = SecureRandom.uuid
  }
  

end
