class User < ApplicationRecord
    belongs_to :person
    validates :name
end
