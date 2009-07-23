module Rtfto
  module TemplateHandlers
    class Base < ::ActionView::TemplateHandler
      include ::ActionView::TemplateHandlers::Compilable

      # TODO: @rtfto_options[:rtf]
      def compile(template)
        "_rtfto_compile_setup;" +
        "rtf = RTF::Document.new(RTF::Font.new(RTF::Font::ROMAN, 'Times New Roman'));" + 
        "#{template.source}\n" +
        "rtf.to_rtf;"
      end

    end
  end
end
