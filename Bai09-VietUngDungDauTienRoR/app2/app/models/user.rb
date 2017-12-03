class User < ApplicationRecord
	validates :email, length: { in: 4..255}, presence: true, uniqueness: {case_sensitive: false}, 
		format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Phải đúng định dạng mail nha mấy chế!" }
	# validates :tos, acceptance: true
	validates :name, presence: true, length: { in: 4..255}
	# validates :password, presence: true, length: { in: 6..55}
	has_secure_password

	def loitd_valid_name
	    if name.present? && name == "loi"
	      errors.add(:name, "Tên không hợp lệ nha!!!")
	    end
	end
end
