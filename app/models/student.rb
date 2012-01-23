class Student < ActiveRecord::Base
  validate :validate_email, :validate_name
  validates_presence_of :name

  def validate_email
    if not email.match(/.+@.+\..+/)
      errors[:email].push("invalid")
    end
  end

  def validate_name
    if name.length < 5
      errors[:name].push("too short!!!")
    end
  end

end
