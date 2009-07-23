require 'rtfto'

Mime::Type.register "application/rtf", :rtf

ActionView::Template.register_template_handler( :rtfto,     Rtfto::TemplateHandlers::Base )
ActionView::Template.register_template_handler( :rtfto_dsl, Rtfto::TemplateHandlers::Dsl  )
