class User < ApplicationRecord
  has_secure_password
  
  ROLES = [:admin, :employee]
  enum role: ROLES

end
