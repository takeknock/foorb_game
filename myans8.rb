# -*- coding: utf-8 -*-
#少しでも条件変わると詰む
class Player
  def play_turn(warrior)
    # cool code goes here
    if !@flg then
      warrior.walk!
      @a=0
      @flg=true
    elsif warrior.feel.captive? then
      warrior.rescue!
    elsif @a==2
      warrior.walk!
    elsif warrior.look then
      warrior.shoot!
      @a = @a +1
    end
  end
end
  
