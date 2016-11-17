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
        dimeString = dimeQuotient.floor.to_s + " dime " + dimeMod.to_s + " penny"
        outputString = dimeString
      elsif counter >= 12 and counter <=14
        dimeString = dimeQuotient.floor.to_s + " dime " + dimeMod.to_s + " pennies"
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
    elsif counter >= 25 && counter <= 99
      quarterQuotient = (counter/25)
      quarterMod = (counter%25)
      dimeQuotient = (quarterMod/10)
      dimeMod = (counter%10)
      nickelQuotient = (dimeMod/5)
      pennyMod = (quarterMod%5)
      if counter == 25
        quarterString = (counter/25).to_s + " quarter"
        outputString = quarterString
      elsif counter >= 26 && counter <= 29
        quarterString = quarterQuotient.floor.to_s + " quarter " + quarterMod.to_s + " penny"
        outputString = quarterString
      elsif counter == 30
        quarterString = quarterQuotient.floor.to_s + " quarter " + nickelQuotient.to_s + " nickel"
        outputString = quarterString
      elsif counter == 31
        quarterString = quarterQuotient.floor.to_s + " quarter " + nickelQuotient.floor.to_s + " nickel " + pennyMod.to_s + " penny"
        outputString = quarterString
      elsif counter >= 32 && counter <= 34
        quarterString = quarterQuotient.floor.to_s + " quarter " + nickelQuotient.floor.to_s  + " nickel " + pennyMod.to_s + " pennies"
        outputString = quarterString
      elsif counter == 35
      quarterString = quarterQuotient.floor.to_s + " quarter " + dimeQuotient.floor.to_s + " dime"
        outputString = quarterString
      elsif counter == 36
      quarterString = quarterQuotient.floor.to_s + " quarter " + dimeQuotient.floor.to_s + " dime " + pennyMod.to_s + " penny"
        outputString = quarterString
      elsif counter >= 37 && counter <= 39
      quarterString = quarterQuotient.floor.to_s + " quarter " + dimeQuotient.floor.to_s + " dime " + pennyMod.to_s + " pennies"
        outputString = quarterString
      elsif counter == 40
      quarterString = quarterQuotient.floor.to_s + " quarter " + dimeQuotient.floor.to_s + " dime " + nickelQuotient.to_s + " nickel"
        outputString = quarterString
      elsif counter == 41
      quarterString = quarterQuotient.floor.to_s + " quarter " + dimeQuotient.floor.to_s + " dime " + nickelQuotient.to_s + " nickel " + pennyMod.to_s + " penny"
        outputString = quarterString
      elsif counter >= 42 && counter <= 44
      quarterString = quarterQuotient.floor.to_s + " quarter " + dimeQuotient.floor.to_s + " dime " + nickelQuotient.to_s + " nickel " + pennyMod.to_s + " pennies"
        outputString = quarterString
      elsif counter == 45
      quarterString = quarterQuotient.floor.to_s + " quarter " + dimeQuotient.floor.to_s + " dimes"
        outputString = quarterString
      elsif counter == 46
      quarterString = quarterQuotient.floor.to_s + " quarter " + dimeQuotient.floor.to_s + " dimes " +  pennyMod.to_s + " penny"
        outputString = quarterString
      elsif counter >= 47 && counter <= 49
      quarterString = quarterQuotient.floor.to_s + " quarter " + dimeQuotient.floor.to_s + " dimes " + nickelQuotient.to_s + " nickel " + pennyMod.to_s + " pennies"
        outputString = quarterString
      elsif counter == 50 || counter == 75
        quarterString = quarterQuotient.floor.to_s + " quarters"
        outputString = quarterString
      elsif counter == 51 || counter == 76
        quarterString = quarterQuotient.floor.to_s + " quarters" + pennyMod.to_s + " penny"
        outputString = quarterString
      elsif counter >= 52 && counter <= 54 || counter >= 77 && counter <= 79
        quarterString = quarterQuotient.floor.to_s + " quarters " + quarterMod.to_s + " pennies"
        outputString = quarterString
      elsif counter == 55 || counter == 80
        quarterString = quarterQuotient.floor.to_s + " quarters " + nickelQuotient.to_s + " nickel"
        outputString = quarterString
      elsif counter == 56 || counter == 81
        quarterString = quarterQuotient.floor.to_s + " quarters " + nickelQuotient.floor.to_s + " nickel " + pennyMod.to_s + " penny"
        outputString = quarterString
      elsif counter >= 57 && counter <= 59 || counter >= 82 && counter <= 84
        quarterString = quarterQuotient.floor.to_s + " quarters " + nickelQuotient.floor.to_s  + " nickel " + pennyMod.to_s + " pennies"
        outputString = quarterString
      elsif counter == 60 || counter == 85
      quarterString = quarterQuotient.floor.to_s + " quarters " + dimeQuotient.floor.to_s + " dime"
        outputString = quarterString
      elsif counter == 61 || counter == 86
      quarterString = quarterQuotient.floor.to_s + " quarters " + dimeQuotient.floor.to_s + " dime " + pennyMod.to_s + " penny"
        outputString = quarterString
      elsif counter >= 62 && counter <= 64 || counter >= 87 && counter <= 89
      quarterString = quarterQuotient.floor.to_s + " quarters " + dimeQuotient.floor.to_s + " dime " + pennyMod.to_s + " pennies"
        outputString = quarterString
      elsif counter == 65 || counter == 90
      quarterString = quarterQuotient.floor.to_s + " quarters " + dimeQuotient.floor.to_s + " dime " + nickelQuotient.to_s + " nickel"
        outputString = quarterString
      elsif counter == 66 || counter == 91
      quarterString = quarterQuotient.floor.to_s + " quarters " + dimeQuotient.floor.to_s + " dime " + nickelQuotient.to_s + " nickel " + pennyMod.to_s + " penny"
        outputString = quarterString
      elsif counter >= 67 && counter <= 69 || counter >= 92 && counter <= 94
      quarterString = quarterQuotient.floor.to_s + " quarters " + dimeQuotient.floor.to_s + " dime " + nickelQuotient.to_s + " nickel " + pennyMod.to_s + " pennies"
        outputString = quarterString
      elsif counter == 70 || counter == 95
      quarterString = quarterQuotient.floor.to_s + " quarters " + dimeQuotient.floor.to_s + " dimes"
        outputString = quarterString
      elsif counter == 71 || counter == 96
      quarterString = quarterQuotient.floor.to_s + " quarters " + dimeQuotient.floor.to_s + " dimes " +  pennyMod.to_s + " penny"
        outputString = quarterString
      elsif counter >= 72 && counter <= 74 || counter >= 97 && counter <= 99
      quarterString = quarterQuotient.floor.to_s + " quarters " + dimeQuotient.floor.to_s + " dimes " + pennyMod.to_s + " pennies"
        outputString = quarterString
      end
    end
    outputString
  end
end
