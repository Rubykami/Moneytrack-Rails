class Account < ApplicationRecord
  
  belongs_to :user, optional: true
  
  before_create {
    self.id = SecureRandom.uuid
  }
  

  validates_associated :user
end
