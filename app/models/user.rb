class User < ApplicationRecord
  include UserConcern
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:github, :facebook, :twitter, :linkedin, :google]

  has_many :images, as: :imageable
  has_many :topics
  has_many :projects
  has_many :employments
  has_many :educations
  has_many :technologies
  has_many :portfolios
  has_many :profiles
  belongs_to :role

  has_many :user_problems
  has_many :problems, through: :user_problems, dependent: :destroy

  has_many :user_solutions
  has_many :solutions, through: :user_solutions, dependent: :destroy

  has_many :blogs
  has_many :comments

  accepts_nested_attributes_for :profiles, allow_destroy: true
  accepts_nested_attributes_for :images, allow_destroy: true

  def master?
    self.role.title == "master"
  end
end
