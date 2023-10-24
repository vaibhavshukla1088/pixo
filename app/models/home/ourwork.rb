class Home::Ourwork < ApplicationRecord
    has_one_attached :first_slide
    has_one_attached :second_slide
    has_one_attached :third_slide
end
