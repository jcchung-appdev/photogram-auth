# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo_id   :integer
#  user_id    :integer
#

class Comment < ApplicationRecord
    belongs_to :photo
    belongs_to :user
    
    validates :user_id, presence: true
    validates :photo_id, presence: true
    validates :body, presence: true
end
