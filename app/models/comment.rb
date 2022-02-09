class Comment < ApplicationRecord
   validates :name,  presence: true
   validates :comment_body,  presence: true, length: { minimum: 5 }
   
   belongs_to :article
end
