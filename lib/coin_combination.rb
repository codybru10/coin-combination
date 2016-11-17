class Fixnum
  define_method(:coin_combination) do
    coins = {1 => "penny", 5 => "nickel", 10 => "dimes", 25 => "quarter"}
    outputString =""
    counter = 0
    until counter.==(self)
      counter = counter.+(1)
    end

    if counter == 1
      pennyString = counter.to_s + " penny"
      outputString = pennyString
    elsif counter <=4 && counter > 1
      pennyString = counter.to_s + " pennies"
      outputString = pennyString
    elsif counter ==5
      nickelString = (counter/5).to_s + " nickel"
      outputString = nickelString
    elsif counter >=5 && counter <=9
      nickelMod = (counter%5)
      if nickelMod == 1
        nickelString = (counter/5).floor.to_s + " nickel " + (counter%5).to_s + " penny"
      elsif nickelMod > 1 and nickelMod < 5
        nickelString = (counter/5).floor.to_s + " nickel " + (counter%5).to_s + " pennies"
      end
      outputString = nickelString
    elsif counter ==10
      dimeString = (counter/10).to_s + " dime"
      outputString = dimeString
    elsif counter >= 11 && counter <= 24
      dimeMod = (counter%10)
      dimeQuotient = (counter/10)
      nickelQuotient = ((counter%10)/5)
      pennyMod = ((counter%10)%5)
      if counter == 11
        dimeString = dimeQuotient.floor.to_s + " dime " + (counter%10).to_s + " penny"
        outputString = dimeString
      elsif counter >= 12 and counter <=14
        dimeString = dimeQuotient.floor.to_s + " dime " + (counter%10).to_s + " pennies"
        outputString = dimeString
      elsif counter == 15
        dimeString = dimeQuotient.floor.to_s + " dime " + nickelQuotient.to_s + " nickel"
        outputString = dimeString
      elsif counter == 16
        dimeString = dimeQuotient.floor.to_s + " dime " + nickelQuotient.floor.to_s + " nickel " + pennyMod.to_s + " penny"
        outputString = dimeString
      elsif counter >= 17 and counter <= 19
        dimeString = dimeQuotient.floor.to_s + " dime " + nickelQuotient.floor.to_s  + " nickel " + pennyMod.to_s + " pennies"
        outputString = dimeString
      elsif counter == 20
        dimeString = (counter/10).to_s + " dimes"
        outputString = dimeString
      elsif counter == 21
        dimeString = dimeQuotient.floor.to_s + " dimes " + pennyMod.to_s + " penny"
        outputString = dimeString
      elsif counter >= 22 and counter <=24
        dimeString = dimeQuotient.floor.to_s + " dimes " + pennyMod.to_s + " pennies"
        outputString = dimeString
      end
    end

    outputString
  end
end
