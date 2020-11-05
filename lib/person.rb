class Person
    attr_reader :name

def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
end
def happiness=(num)
    if num <= 0
        @happiness = 0
    elsif num >= 10
      @happiness = 10
    else
      @happiness = num
    end
end
def happiness
    @happiness
end
def bank_account
    @bank_account
end
def bank_account=(num)
    @bank_account = @bank_account + num
    @bank_account
end
def hygiene=(num)
    if num <= 0
        @hygiene = 0
    elsif num >= 10
      @hygiene = 10
    else
      @hygiene = num
    end
end
def hygiene
    @hygiene
end
def happy?
    if @happiness > 7
        return true
    else
        return false
    end
end
def clean?
    if @hygiene > 7 
        return true
    else 
        return false
    end
end
def get_paid(salary)
    @bank_account = @bank_account + salary
    return "all about the benjamins"
end
def take_bath
    temp = @hygiene
    temp += 4
    self.hygiene=(temp)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end
def work_out
    temp = @hygiene
    temp -= 3
    self.hygiene=(temp)
    temp2 = @happiness
    temp2 += 2
    self.happiness=(temp2)
    return "♪ another one bites the dust ♫"
end
def call_friend(person)
    temp = person.happiness
    temp += 3
    person.happiness=(temp)
    temp2 = @happiness
    temp2 += 3
    self.happiness=(temp2)
    return "Hi #{person.name}! It's #{@name}. How are you?"
end
def start_conversation(speaker, topic)
    if topic == "politics"
        temp = speaker.happiness
        temp -= 2
        speaker.happiness=(temp)
        temp2 = @happiness
        temp2 -= 2
        self.happiness=(temp2)
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        temp = speaker.happiness
        temp += 1
        speaker.happiness=(temp)
        temp2 = @happiness
        temp2 += 1
        self.happiness=(temp2)
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end
end

end