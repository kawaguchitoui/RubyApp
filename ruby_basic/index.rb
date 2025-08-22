class Car
  def initialize(car_name, car_model, capacity)
    # インスタンス変数（インスタンスごとに保持される）
    @name = car_name
    @model = car_model
    @capacity = capacity
  end

  # クラスメソッド（インスタンスを作らなくても呼び出せる）
  def self.run
    puts '走行します'
  end

  def ride_car(ride_number)
    @ride_number = ride_number
    if ride_number > @capacity
      puts "#{@name}は、乗車定員が#{@capacity}人なので、#{ride_number}人は乗れません。"
    else
      puts "#{ride_number}人乗車できました。"
    end
  end
end

fire_truck = Car.new('消防車', '大型車', 5)
fire_truck.ride_car(3)
Car.run



def add_friend(list)
  friend = {}
  puts "お友達の名前は？"
  # 文字列の末尾から改行文字を取り除く
  friend[:name] = gets.chomp
  puts "お友達の身長は？"
  friend[:height] = gets.to_i
  list << friend
end



def judge_height(list)
  ride_count = 0
  list.each do |friend|
    if friend[:height] >= 130
      puts "#{friend[:name]}くんは乗車できます"
      ride_count += 1
    else
      puts "#{friend[:name]}くんは乗車できません！"
    end
  end
  puts "乗車するのは#{ride_count}人です"
end



friends = []
3.times do
  friends = add_friend(friends)
end
judge_height(friends)
