defmodule MIPS do
      def gcd(n,n) do n end
      def gcd(a,b) when a > b do gcd(a-b, b) end
      def gcd(a,b) do gcd(a, b-a) end

      def lcm(0,0) do 0 end
      def lcm(a,b) do (a*b)/gcd(a,b) end
      
      def add([a,b],[c,d]) do
        e = lcm(b,d)
        f = a * div(round(e),b)
        g = c * div(round(e),d)
        h = div(f+g, gcd(f+g,round(e)))
        i = div(round(e),gcd(f+g,round(e)))
      if i == 1 do
          [h]
        else if h == i do
          [1]
        else 
          [h,i]
        end   
        end  
      end
    def sub([a,b],[c,d]) do
        e = lcm(b,d)
        f = a * div(round(e),b)
        g = c * div(round(e),d)
        h = div(f-g, gcd(f-g,round(e)))
        i = div(round(e),gcd(f-g,round(e)))
        if i == 1 do
          [h]
        else if h == i do
          [1]
        else 
          [h,i]
        end 
        end
      end        
    def mul([a,b],[c,d]) do
        if c == b do
          [a,d] 
          if d == 1 do
            [a]
          else
            [a,d]
          end    
        else 
          [div(a*c, gcd(a*c,b*d)),div(b*d,gcd(a*c,b*d))]
        end 
    end 
    def add([a],[c,d]) do
        add([a,1],[c,d])
    end 
    def add([a,b],[c]) do
        add([a,b],[c,1])
    end   
    def sub([a],[c,d]) do
        sub([a,1],[c,d])
    end 
    def sub([a,b],[c]) do
        sub([a,b],[c,1]) 
    end  
    def mul([a],[c,d]) do
        mul([a,1],[c,d])
    end
    def mul([a,b],[c]) do
      mul([a,b],[c,1]) 
    end      
  end
