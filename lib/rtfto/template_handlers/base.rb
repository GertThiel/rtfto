module Rtfto
  module TemplateHandlers
    class Base < ::ActionView::TemplateHandler
      include ::ActionView::TemplateHandlers::Compilable
      
      def compile(template)
        "_rtfto_compile_setup;" +
        "rtf = RTF::Document.new(@rtfto_options[:rtf]);" + 
        "#{template.source}\n" +
        "rtf.to_rtf;"
      end
    end
  end
end


