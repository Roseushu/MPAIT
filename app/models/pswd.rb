class Pswd < ActiveRecord::Base
		validates :name, :presence => true,
                   :length => {:minimum => 2,:maximum =>254},
                   :uniqueness => {:case_sensitive => false}
  		validates :pwd, :presence =>true,
                       :length => {:minimum => 6}
end
