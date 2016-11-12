class User < ActiveRecord::Base

	validates :username,presence:true,:length=>{minimum:4},uniqueness:true
	validates :password,presence:true,:length=>{minimum:4}

	has_secure_password


end
