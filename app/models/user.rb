class User < ActiveRecord::Base
  validates :email, presence: true

  has_many :roadmaps
  has_many :result_goals, through: :roadmaps, source: :result_goals
  
  include BCrypt

  def full_name
    "#{first_name} #{last_name}"
  end

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end


  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    if @user && @user.password == password
      @user
    else
      false
    end
  end
end
