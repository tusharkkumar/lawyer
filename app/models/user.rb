class User < ActiveRecord::Base

	validates :username,presence:true,:length=>{minimum:5},uniqueness:true
	validates :password,presence:true,:length=>{minimum:5}

	has_secure_password


end
