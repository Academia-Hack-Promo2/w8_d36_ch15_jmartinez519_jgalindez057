class BodyArmor < ActiveRecord::Base
	has_and_belongs_to_many :characters

	validates :name, :kind, :danger, :character_id, :character_name, :money, :defense, presence: true
	validates :danger, :weapon_id, :character_id, :money, :defense, numericality: true
	validates :name, :kind, :character_name, format: { :with => /\A[a-z A-Z]+\z/}
	validates :name, :kind, :character_name, length: { maximum: 20 }
	validates :danger, :money, :defense, length: { maximum: 20 }
	
end
