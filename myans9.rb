class Player
  def play_turn(warrior)
    # cool code goes here
    if !@flg2 then
      if !@flg1 then
        if !@flg && warrior.health > 10 && warrior.feel.empty? then
          warrior.walk!
          @b=0
        elsif !@flg && !warrior.feel.empty?
          warrior.attack!
        elsif warrior.look && @b==0 
          warrior.shoot!
          @b = @b+1 
        elsif warrior.health <= 10
          warrior.rest!
          @flg=true
        else
          warrior.rest!
          if warrior.health > 18 then 
            @flg1 = true
            @a = 0
          end
        end
      else
        if warrior.feel.wall?
          warrior.pivot!
          @flg2 = true
        elsif warrior.feel.empty?
          warrior.walk!
        elsif warrior.feel.captive?
          warrior.rescue!
        end
      end
    elsif warrior.feel.captive?
      warrior.rescue!
    else
      my_attack_for(warrior)
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
  
end
  
