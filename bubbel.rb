module Bubbel
  def prototype
    Class.new do
      def initialize(klass)
        @klass = klass
      end

      def method_missing name, &blk
        @klass.send(:define_method, name, &blk)
      end
    end.new self
  end
end

class Class
  include Bubbel
end