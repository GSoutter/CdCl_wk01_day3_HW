stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

#1. Add "Edinburgh Waverley" to the end of the array
stops.push("Edinburgh Waverley")
p "1: new array with Waverly  = #{stops}"

#2. Add "Glasgow Queen St" to the start of the array
stops.unshift("Glasgow Queen St")

p "2: new array with Queen St  = #{stops}"

#3. Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")

stops.insert(stops.find_index("Falkirk High")+1, "Polmont")

p "3: new array with Polmont  = #{stops}"

#4. Print out the index position of "Linlithgow"
p

p "4: Linlithgow index  = #{stops.find_index("Linlithgow")}"


#5. Remove "Livingston" from the array using its name
stops.delete("Livingston")

p "5: new array without Livingston  = #{stops}"


#6. Delete "Cumbernauld" from the array by index
stops.delete_at(stops.find_index("Cumbernauld"))
p "6: new array without Cumbernauld  = #{stops}"


#7. Print the number of stops there are in the array?

p "7: number of stops  = #{stops.length}"

#8. Show as many ways as you can to return "Falkirk High" from the array?
p "8: Number of ways to return Falkirk high"

p stops[stops.find_index("Falkirk High")]
p stops[2]
p stops.at(2)

#9. Reverse the positions of the stops in the array
stops.reverse!

p "9: new array reversed  = #{stops}"

#10 Print out all the stops using a for loop
p "10: stops printed:"

for stop in stops
  p stop
end




#p stops
