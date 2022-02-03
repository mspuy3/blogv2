class Article < ApplicationRecord
   validates :title,  presence: true
   validates :author,  presence: true
   validates :text,  presence: true, length: { minimum: 5 }
end
