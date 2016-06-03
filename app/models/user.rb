class User < ActiveRecord::Base
	serialize :checked_values, Array
end
