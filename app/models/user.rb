class User < ApplicationRecord
	has_many :posts

	validates :email,
	presence: true,
	uniqueness: {case_sensitive: false}
	
	validates :name,
	presence: true,
	length: {in: 0..20}

	validates :password,
	length: {in: 8..72},
	on: :create

	has_secure_password

	def self.authenticate(params)
		User.find_by_email(params[:email]).try(:authenticate, params[:password])
	end
end
