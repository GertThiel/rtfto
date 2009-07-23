module Rtfto
  module TemplateHandlers
    class Dsl < Base
      
      def compile(template)
        "_rtfto_compile_setup(true);" +
        "rtf = RTF::Document.new(@rtfto_options[:rtf]);" + 
        "rtf.instance_eval do; #{template.source}\nend;" +
        "rtf.to_rtf;"
      end

    end
  end
end


