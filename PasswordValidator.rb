class PasswordValidator
  
  def initialize(pwd)
    @password = pwd
    @passed   = false
  end
    
 
  def containsOneOrMoreLowerCaseLetters()
    @password.each_char{|x| 
      if(x >= 'a' && x <= 'z')
        @passed = true
      end
    }
    
    if(!@passed) 
      passwordIsValid("Password must contain 1 or more LOWERCASE characters!")
    end
    
    return @passed
  end
  
  def containsOneOrMoreNumbers()
    @password.each_char{|x| 
      if(x >= '0' && x <= '9')
        @passed = true
      end
    }
    if(!@passed) 
      passwordIsValid("Password must contain 1 or more NUMBERS!")
    end
    
    return @passed
  end
  
  def containsOneOrMoreUpperCaseLetters()
    @password.each_char{|x| 
      if(x >= 'A' && x <= 'Z')
        @passed =  true
      end
    }
    if(!@passed) 
      passwordIsValid("Password must contain 1 or more UPPERCASE characters!")
    end
    
    return @passed
  end

  def isNotNullPassword()
    @password = @password.lstrip
    @password = @password.rstrip
    
    if(@password.nil? || @password=="")
      @passed = false
    else
      @passed = true
    end
    
    if(!@passed) 
      passwordIsValid("Password must not be EMPTY!")
    end
    
    return @passed
  end  
  
  def passwordIsGreaterThanOrEqualEightChars()
    if(@password.length() >= 8)
      @passed = true
    else
      @passed = false
    end    
    
    if(!@passed) 
      passwordIsValid("Password must contain EIGHT or more characters!")
    end
    
    return @passed  
  end
  
  def passwordIsValid(message)
    if(@passed==false)
      puts("#{@password} #{message}!!!")
    end
  end
  
end