# RTFto

a rails plugin providing templating abilities for generating RTF files
leveraging the ruby-rtf library

Copyright (c) 2009 Gert Thiel, released under the MIT license

## Install

You need to install Ruby RTF first:

    sudo gem install rtf

Or preferably an advanced fork of Ruby RTF:

    sudo gem install thechrisoshow-ruby-rtf

Then install RTFto into your Ruby on Rails project:

    script/plugin install git://github.com/GertThiel/rtfto.git

## Templates

The templates are plain Ruby code which hav access to the `RTF::Document`
object. Simply refer to `rtf`:

    rtf.paragraph  << "Tekst, który mają Państwo zredagować, …"

The template filenames should use the `.rtfto` extension. A template for an
export action would hence be named `export.rtf.rtfto`.

## RTF extensions

This plugin includes Laurent Farcy's RTF-Extensions to support hyperlinks and
UTF-8 encoded characters.

### Hyperlinks

    rtf.paragraph do |p|
      p << "Visit "
      p.hyperlink('http://www.google.com', 'Google')
      p << " and start searching the web."
    end

### UTF-8

    utf8_string = "â鋸"
    rtf.paragraph do |p|
      p << "A UTF-8 encoded string : #{utf8_string}"
    end

## Acknowledgements

  * Peter Wood's [Ruby RTF](http://ruby-rtf.rubyforge.org/)

  * Chris O'Sullivan's [advanced and gitified Ruby RTF fork](http://github.com/thechrisoshow/rtf/)

  * Laurent Farcy's [RTF-Extensions](http://github.com/lfarcy/rtf-extensions/)

