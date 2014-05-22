class Player
  def play_turn(warrior)
    # cool code goes here
    if warrior.feel.wall? then
      warrior.pivot!
    else
      if !@flg then
        if !@flg1 then
          if @health < 11
            warrior.rest!
            @flg1 = true
          else
            my_attack_for(warrior)
          end
        elsif warrior.health < 20 && @health > warrior.health
          warrior.walk!(:backward)
        elsif warrior.health < 20
          warrior.rest!
        else
          @flg = true
        end
      else
        my_attack_for(warrior)
      end
    end
    @health = warrior.health
  end

  def my_attack_for(warrior)
    if warrior.feel.empty? then
      warrior.walk!
    else
      warrior.attack!
    end
  end
  
  def my_attack_back(warrior)
    if warrior.feel(:backward).empty? then
      warrior.walk!(:backward)
    else
      warrior.attack!(:backward)
    end
  end
end
  
