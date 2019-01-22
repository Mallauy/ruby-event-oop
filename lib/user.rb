require "pry"

class User
    attr_accessor :email , :name
    @@all_users = []

  def initialize(email_to_update)
    @email = email_to_update
    @@all_users << self 
  end

  def self.all 
    return @@all_users
  end

  def self.find_by_email(mail)
    @@all_users.each do |user|
      return user if user.email == mail
    end 
  end
end

binding.pry 
