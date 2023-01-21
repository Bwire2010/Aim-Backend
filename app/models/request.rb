class Request < ApplicationRecord
    belongs_to :asset, optional: true
    belongs_to :user, optional: true

    validates :quantity, presence: true
end
