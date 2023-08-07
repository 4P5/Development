local particle = particles["end_rod"]:spawn()
particles:removeParticles()
return particle:isAlive(), false