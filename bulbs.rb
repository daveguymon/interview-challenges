# Problem Statement

# N light bulbs are connected by a wire. Each bulb has a switch associated with it, however due to faulty wiring, a switch also changes the state of all the bulbs to the right of current bulb. Given an initial state of all bulbs, find the minimum number of switches you have to press to turn on all the bulbs. You can press the same switch multiple times.

bulbs_array = [0,1,1,0,1,0,0,1]

def toggle_bulbs(bulbs_array)
 pressed_switch_count = 0
 ending_index = bulbs_array.length - 1


 until bulbs_array.sum == bulbs_array.length do
    starting_index = bulbs_array.find_index(0)

    range = (starting_index..ending_index)

    range.each do |index|
      bulbs_array[index] = bulbs_array[index] == 0 ? 1 : 0
    end

    pressed_switch_count = pressed_switch_count + 1
    p bulbs_array
  end

  return pressed_switch_count
end

# Initial: [0,1,1,0,1,0,0,1] // Count: 0
# Pass 1:  [1,0,0,1,0,1,1,0] // Count: 1
# Pass 2:  [1,1,1,0,1,0,0,1] // Count: 2
# Pass 3:  [1,1,1,1,0,1,1,0] // Count: 3
# Pass 4:  [1,1,1,1,1,0,0,1] // Count: 4
# Pass 5:  [1,1,1,1,1,1,1,0] // Count: 5
# Pass 6:  [1,1,1,1,1,1,1,1] // Count: 6
