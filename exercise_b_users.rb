users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p "1: Johnathans twitter = #{users["Jonathan"][:twitter]}"

# 2. Get Erik's hometown
p "2: Eriks home town  = #{users["Erik"][:home_town]}"

# 3. Get the array of Erik's lottery numbers
p "3: Eriks lottery number = #{users["Erik"][:lottery_numbers]}"


# 4. Get the species of Avril's pet Monty
p "4: Avrils species = #{users["Avril"][:pets].find{|h| h[:name] == "monty"}[:species]}"



# 5. Get the smallest of Erik's lottery numbers

p "5: Eriks lowest number = #{users["Erik"][:lottery_numbers].min()}"

# 6. Return an array of Avril's lottery numbers that are even
avrils_odd_nums = []
for num in users["Avril"][:lottery_numbers]
  if (num % 2 == 0)
    avrils_odd_nums.push(num)
  end
end

p  "6: Avrils even lottery numbers = #{avrils_odd_nums}"

# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
users["Erik"][:lottery_numbers].push(7)

p "7: Eriks lottery number with 7 = #{users["Erik"][:lottery_numbers]}"

# 8. Change Erik's hometown to Edinburgh

users["Erik"][:home_town] = "Edinburgh"

p "8: Eriks new home town  = #{users["Erik"][:home_town]}"


# 9. Add a pet dog to Erik called "Fluffy"

users["Erik"][:pets].push({:name => "Fluffy", :species => "dog"})

p "9:Eriks Pets = #{users["Erik"][:pets]}"


# 10. Add another person to the users hash
users["John Doe"] = nil
p "10: New User Keys  = #{users.keys}"
