module RTF
  class FontTable
    def to_rtf(indent=0)
       prefix = indent > 0 ? ' ' * indent : ''
       text   = StringIO.new
       text << "#{prefix}{\\fonttbl"
       @fonts.each_index do |index|
          text << "\n#{prefix}{\\f#{index}\\fcharset0#{@fonts[index].to_rtf}}"
       end
       text << "\n#{prefix}}"
       text.string
    end
  end
end
