class Service::Banner < ApplicationRecord
    validates :title, :description, presence: :true
end
