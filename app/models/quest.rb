class Quest < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 1000}}
  validates :user_id, {presence: true}
  belongs_to :user
  has_many :comments

  def user
    return User.find_by(id: self.user_id)
  end

end
