function events.TICK()
    for i = 0, 2, 0.1 do
        particles["end_rod"]:pos(95, 101 + i*5, 106):scale(i):lifetime(1):velocity():gravity():spawn()
        particles["flame"]:pos(95, 101 + i*5, 105):scale(i):lifetime(10):velocity():gravity():spawn()
        particles["bubble"]:pos(95, 101 + i*5, 104):scale(i):lifetime(1):velocity():gravity():spawn()
    end
    particles["end_rod"]:pos(95, 101, 103):lifetime(10):velocity(0,1,0):gravity():spawn()
    particles["end_rod"]:pos(95, 101, 103):lifetime(10):velocity(-1,0,0):gravity():spawn()
    particles["end_rod"]:pos(95, 103, 102):lifetime(10):velocity():gravity(1):spawn()
    particles["end_rod"]:pos(95, 101, 101):lifetime(10):velocity():gravity(-1):spawn()
end