class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  has_many :stances, dependent: :destroy
  has_many :hand_arm_weapons, dependent: :destroy
  has_many :hand_arm_techniques, dependent: :destroy
  has_many :feet_leg_weapons, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }

  validates :email,
            presence: true,
            length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
end
