class Student < ActiveRecord::Base
  validate :validate_email
  validates_presence_of :name

  def validate_email
    if not email.match(/@/)
      errors[:email].push("invalid")
    end
  end

end
