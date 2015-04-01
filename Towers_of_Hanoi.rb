
  first_tower = [5,4,3,2,1]
  second_tower = []
  third_tower = []
  tower = 0
  token = 0

  while true
    tower = 0
    token = 0
    puts "Tower 1:" + first_tower.to_s
    puts "Tower 2:" + second_tower.to_s
    puts "Tower 3:" + third_tower.to_s
    puts "Which tower would you like to select from? 1, 2 or 3"
    tower = gets.chomp.to_i
    towers = [1,2,3]
    if towers.include?(tower) == false
        puts "Please enter a valid number!"
        tower = gets.chomp.to_i
    end

    if tower == 1
          if first_tower == []
            puts "Tower empty. Try again!"
            redo
          else
            token = first_tower.pop
          end

    elsif tower == 2
      if second_tower == []
         puts "Tower empty. Try again!"
         redo
      else
        token = second_tower.pop
      end

    elsif tower == 3
      if third_tower == []
        puts "Tower empty. Try again!"
        redo
      else
        token = third_tower.pop
      end
     end

    if token > 0
      puts "What tower would you like to place the #{token} ring on?"
      tower_place = gets.chomp.to_i
    end

    while towers.include?(tower_place) == false
        puts "Please enter a valid number!"
      tower_place = gets.chomp.to_i
    end


    if token > 0
      move = 0
      while move == 0
          if tower_place == 1 && (first_tower.empty? || first_tower.last > token)
            first_tower.push(token)
            move = 1
          elsif tower_place == 1 && first_tower.last < token
            puts "Invalid Move. Enter new move."
            tower_place = gets.chomp
          elsif tower_place == 2 && (second_tower.empty? || second_tower.last > token)
            second_tower.push(token)
            move = 1
          elsif tower_place == 2 && second_tower.last < token
            puts "Invalid Move. Enter new move."
            tower_place = gets.chomp
          elsif tower_place == 3 && (third_tower.empty? || third_tower.last > token)
            third_tower.push(token)
            move = 1
          elsif tower_place == 3 && third_tower.last < token
            puts "Invalid Move. Enter new move."
            tower_place = gets.chomp
          end
      end
    end
    if second_tower == [5,4,3,2,1] || third_tower == [5,4,3,2,1]
    puts "Tower 1:" + first_tower.to_s
    puts "Tower 2:" + second_tower.to_s
    puts "Tower 3:" + third_tower.to_s
      puts "YOU WIN!!"
      exit
    end

  end
