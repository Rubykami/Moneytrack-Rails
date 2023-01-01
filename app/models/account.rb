class Account < ApplicationRecord

    belongs_to :user, optional: true

    before_create {
        self.id = SecureRandom.uuid
      }
end
