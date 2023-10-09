#modified from the example in the textbook "The Ruby Programming Language"

class HTML
  def initialize
  end
  
  def tag tagname
    if tagname[0..2]=="par"
      tagname="p"
    end
    
    printf "<%s>\n", tagname

     if block_given?
       content = yield
       if content
         puts content.to_s
         printf "</%s>\n", tagname
       end
     else
       printf "\n<%s/>\n",tagname
     end
    nil
  end


  alias method_missing tag

  #class method
  def self.generate  out, &block
    HTML.new.instance_eval(&block)
  end
end



