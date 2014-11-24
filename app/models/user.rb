class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :identities

  def self.find_from_omniauth(info)
    User.where(:name => info['info']['name']).first
  end

  def self.create_from_omniauth(info)
    create(name: info['info']['name'])
  end

end
