hp = 5;
minSpd = 0.5;
maxSpd = 5;
spdInterval = 0.01;
spd = minSpd;
turnSpeedMin = 5;
turnSpeedMax = 8;
turnSpeed = random_range(5, 8);
maxTurnSpd = 30;
turnInterval = 0.01;
turnDivisor = 100000;
turnRate = turnSpeed / turnDivisor;



onTopOfPlayer = false;
canSeePlayer = false;
isRotating = false;
needsNewAngle = true;
needsRotation = false;