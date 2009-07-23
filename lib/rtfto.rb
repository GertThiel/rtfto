require 'action_controller'
require 'action_view'

# ruby-rtf
#
require 'rtf'

# rtf-extensions
#
require 'rtf/utf8'
require 'rtf/hyperlink'

# My fix to RTF::FontTable#to_rtf
#
require 'rtf/utf8_fix'

require 'rtfto/action_controller'
require 'rtfto/action_view'

require 'rtfto/template_handler/compile_support'

require 'rtfto/template_handlers/base'


# for now applying to all Controllers
# however, could reduce footprint by letting user mixin (i.e. include) only into controllers that need it
# but does it really matter performance wise to include in a controller that doesn't need it?  doubtful-- depends how much of a hit the before_filter is i guess.. 
#
class ActionController::Base
  include Rtfto::ActionController
end
class ActionView::Base
  include Rtfto::ActionView
end
