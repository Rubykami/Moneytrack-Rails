class Account < ApplicationRecord

    belongs_to :user

    before_create {
        self.id = SecureRandom.uuid
      }
end
