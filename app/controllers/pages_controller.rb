class PagesController < ApplicationController
  $counter = 0
  
  def fortune
    fortunes = {1 => 'you will have a good day', 2 => 'you will have a bad day', 3 => 'you will have a so-so day', 4 => 'you will win the lotto'}
    @fortune = "here is your fortune: #{fortunes[rand(3) + 1]}"
  end

  def lotto
    @rand1 = rand(60)
    @rand2 = rand(60)
    @rand3 = rand(60)
    @rand4 = rand(60)
    @rand5 = rand(60)
    @rand6 = rand(60)

    @lottoset = "#{@rand1}, #{@rand2}, #{@rand3}, #{@rand4}, #{@rand5}, #{@rand6}"
  end

  def visited
    
  end

  def beer
    @bottles = 5
    @lyrics = []

    while @bottles >= 1
      @lyrics << "#{@bottles} bottles of beer on the wall, #{@bottles} of beer, take one down, pass it around, #{@bottles - 1} bottles of beer on the wall"
      @bottles -= 1
    end

    

    

  end

  def lottoplus
    @rand1 = rand(60)
    @rand2 = rand(60)
    @rand3 = rand(60)
    @rand4 = rand(60)
    @rand5 = rand(60)
    @rand6 = rand(60)
  end

  def accounts
    @accounts = [{'f' => 'Bob', 'l' => 'Barker', 'a' => rand.to_s[2..12], 'e' => 'bob@gmail.com'},{'f' => 'Chuck', 'l' => 'Woolery', 'a' => '4444', 'e' => 'cwool@gmail.com'},{'f' => 'Steve', 'l' => 'Harvey', 'a' => '3333', 'e' => 'sharv@gmail.com'}]

  end

end
