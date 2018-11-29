require_relative "PasswordValidator"
require "test/unit"

class PasswordValidatorTest < Test::Unit::TestCase

  def setup
    @password = "Abc9deFZ23"
    @passwordValidator = PasswordValidator.new(@password)
    @passed = false
  end

  def testPasswordLargerEightChars
    passwordLength = @passwordValidator.passwordIsGreaterThanOrEqualEightChars()
    @passed = assert_true(passwordLength,"PASSWORD IS NOT EIGHT OR MORE CHARACTERS! THIS IS NOT A VALID PASSWORD!!!")
  end
  
  def testPasswordNotNull
    passwordNotNull = @passwordValidator.isNotNullPassword
    @passed = assert_true(passwordNotNull, "PASSWORD IS EMPTY! THIS IS NOT A VALID PASSWORD!!!")
  end

  def testPasswordOneOrMoreUpCase 
    passwordOneOrMoreUpCase = @passwordValidator.containsOneOrMoreUpperCaseLetters()
    @passed = assert_true(passwordOneOrMoreUpCase, "PASSWORD DOES NOT CONTAIN AN UPPERCASE CHARACTER! THIS IS NOT A VALID PASSWORD!!!")
  end  
  
  def testPasswordOneOrMoreLowCase     
    passwordOneOrMoreLowCase = @passwordValidator.containsOneOrMoreLowerCaseLetters()
    @passed = assert_true(passwordOneOrMoreLowCase, "PASSWORD DOES NOT CONTAIN A LOWERCASE CHARACTER! THIS IS NOT A VALID PASSWORD!!!")
  end
  
  def testPasswordOneOrMoreNum
    passwordOneOrMoreNumbers = @passwordValidator.containsOneOrMoreNumbers()
    @passed = assert_true(passwordOneOrMoreNumbers, "PASSWORD DOES NOT CONTAIN A NUMBER! THIS IS NOT A VALID PASSWORD!!!")    
  end

end