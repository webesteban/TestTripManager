require 'active_support/concern'

module Base
	extend ActiveSupport::Concern
	included do
		default_scope {where(enabled: true)}
		before_create :set_enabled
		
		# The enabled field is activated automatically and not by the interface
		def set_enabled
			self.enabled = true
		end

		# Avoid deleting item from the database
		def destroy
			update_attribute(:enabled, false)
		end
	end

end