# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#  user_id    :integer
#
# Indexes
#
#  index_comments_on_post_id  (post_id)
#  index_comments_on_user_id  (user_id)
#
# Foreign Keys
#
#  post_id  (post_id => posts.id)
#  user_id  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates_presence_of :post_id
  validates_presence_of :body
end
