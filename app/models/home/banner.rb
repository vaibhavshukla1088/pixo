class Home::Banner < ApplicationRecord
    has_one_attached :banner
    has_many_attached :clients
end
