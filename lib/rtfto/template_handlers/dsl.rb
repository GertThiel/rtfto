module Rtfto
  module TemplateHandlers
    class Dsl < Base

      # TODO: @rtfto_options[:rtf]
      def compile(template)
        "_rtfto_compile_setup(true);" +
        "rtf = RTF::Document.new(RTF::Font.new(RTF::Font::ROMAN, 'Times New Roman'));" + 
        "rtf.instance_eval do; #{template.source}\nend;" +
        "rtf.to_rtf;"
      end

    end
  end
end
