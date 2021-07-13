class User < ApplicationRecord
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
  has_secure_password

  def quests
    return Quest.where(user_id: self.id)
  end
end
