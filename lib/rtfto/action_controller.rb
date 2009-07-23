module Rtfto
  module ActionController

    DEFAULT_RTFTO_OPTIONS = {:inline=>true}
      
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def rtfto(options)
        rtf_options, rtfto_options = breakdown_rtfto_options options
        write_inheritable_hash(:rtf, rtf_options)
        write_inheritable_hash(:rtfto, rtfto_options)
      end
    
    private

      def breakdown_rtfto_options(options)
        rtfto_options = options.dup
        rtf_options = (rtfto_options.delete(:rtf) || {}).dup
        [rtf_options, rtfto_options]
      end
    end

    def rtfto(options)
      @rtfto_options ||= DEFAULT_RTFTO_OPTIONS.dup
      @rtfto_options.merge! options
    end


  private

    def compute_rtfto_options
      @rtfto_options ||= DEFAULT_RTFTO_OPTIONS.dup
      @rtfto_options[:rtf] ||= {}
      @rtfto_options[:rtf].merge!(self.class.read_inheritable_attribute(:rtf) || {}) {|k,o,n| o}
      @rtfto_options.merge!(self.class.read_inheritable_attribute(:rtfto) || {}) {|k,o,n| o}
      @rtfto_options
    end

  end
end


