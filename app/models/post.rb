class Post < ApplicationRecord
    before_save :generate_slug
  
    validates :title, presence: true
  
    def generate_slug
      self.slug = title.parameterize if title
    end
  
    def to_param
      slug
    end
  end
  