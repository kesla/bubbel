# Bubbel

Bubbel make it possible to extend java objects with a syntax similar to the prototype method in javascript.

## Example

### Standard Ruby
    # Number is an already defined class
    class Object
      def foo(bar)
        puts bar
      end
    end
    
    obj = Object.new
    obj.foo("Hello world") #Prints "Hello world"
### Ruby with Bubbel
    require 'bubbel.rb'
    Object.prototype.foo do |bar|
      puts bar
    end
    
    obj = Object.new
    obj.foo("Hello world") #Prints "Hello world"

## License
This code is public domain.