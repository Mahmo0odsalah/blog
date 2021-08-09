class Article < ApplicationRecord
    include Visible 
    
    has_many :comments, dependent: :destory

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
