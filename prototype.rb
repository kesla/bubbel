class Class  
  def prototype
    Prototype.new self
  end
private
  class Prototype
    def initialize(klass)
      @klass = klass
    end
    
    def method_missing name, &blk
      @klass.send(:define_method, name, &blk)
    end
  end
end