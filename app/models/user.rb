class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  has_many :tweets, dependent: :destroy
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :username
  validates :username, uniqueness: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
