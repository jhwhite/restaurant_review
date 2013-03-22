class User < ActiveRecord::Base
  attr_accessible :email, :fullname, :password, :userid

  validates :userid, :uniqueness => true

  def self.authenticate(user, password)
  name = self.find_by_userid(user)
  if (name)
    if name.password != password
      name = nil
    end
  end
  name
  end
end
