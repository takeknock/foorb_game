# -*- coding: utf-8 -*-
class Player
  def play_turn(warrior)
    # cool code goes here
#  my_attack(warrior)
 #   if @health > warrior.health then
  #    my_attack(warrior)
#    else
      #まずは壁際rescue
      if !@hflg
        if warrior.feel(:backward).empty? then
          warrior.walk!(:backward)
        elsif warrior.feel(:backward).captive?
          warrior.rescue!(:backward)
        elsif warrior.feel(:backward).wall?
          @hflg = true
        end
      end
      
      if @hflg then
        if !@hflg3 then
          if !@hflg2 then
            if warrior.health > 8
              my_attack_for(warrior)
            elsif warrior.health < 20 && @health <= warrior.health then
              warrior.rest!
              @hflg2 = true
            elsif warrior.health < 20 && @health > warrior.health
              warrior.walk!(:backward)
            end
          else
            warrior.rest!
            if warrior.health==20 then
              @hflg3 = true
            end
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
  
