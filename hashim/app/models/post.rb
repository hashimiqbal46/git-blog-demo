class Post < ApplicationRecord
  	belongs_to :user, touch: true
  
  	
end
