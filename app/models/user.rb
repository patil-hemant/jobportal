class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :education_details, :dependent => :destroy
	has_many :work_experiences, :dependent => :destroy
	mount_uploader :image, ImageUploader

	def user_name
		if first_name.present? || last_name.present?
			"#{first_name} #{last_name}" 
		else
			email
		end			
	end
end
