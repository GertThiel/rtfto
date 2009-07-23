module Rtfto
  module ActionView

  private
    def _rtfto_compile_setup(dsl_setup = false)
      compile_support = Rtfto::TemplateHandler::CompileSupport.new(controller)
      @rtfto_options = compile_support.options
    end

  end
end

