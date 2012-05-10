class Registration < ActiveRecord::Base
  attr_accessible :email, :key, :name, :topic, :twitter
end
