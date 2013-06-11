class Student < ActiveRecord::Base
  attr_accessible :name, :photo_url, :section, :twitter
end
