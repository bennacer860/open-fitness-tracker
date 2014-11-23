class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  def self.create_with_omniauth(info)
    #puts info['name']
    #puts info.user['displayName']
    #puts info.inspect
    create(name: info['info']['name'])
  end

end
