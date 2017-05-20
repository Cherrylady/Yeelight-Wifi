require './yeelight'

def police_alarm
    while true
        lamp.set_rbg([4, 0, 255], 'smooth', 300)
        sleep(1)
        lamp.set_rbg([228, 5, 5], 'smooth', 300)
        sleep(1)
    end
end

puts police_alarm
# initialize new connection
def sample  
    lamp = Yeelight.new('192.168.1.109',55443) 
# setup dark-blue rbg colour
    lamp.set_rbg([4, 0, 255], 'smooth', 3000)
    sleep(5)
# setup light-green hsv colour
    lamp.set_hsv(77, 89, 'smooth', 3000)# 89
# toggle lamp
    lamp.set_bright(100, 'smooth', 500)
    puts lamp.on()
end

#puts sample
