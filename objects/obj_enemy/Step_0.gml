var playerInstance = instance_nearest(x, y, obj_player);
if instance_exists(playerInstance) {

  x1 = x + lengthdir_x(300, direction - 35);
  y1 = y + lengthdir_y(300, direction - 35);
  x2 = x + lengthdir_x(300, direction + 35);
  y2 = y + lengthdir_y(300, direction + 35);
  
  if point_in_triangle(playerInstance.x, playerInstance.y, x, y, x1, y1, x2, y2) {
    canSeePlayer = true;
  }
  
  if canSeePlayer image_blend = c_red;
  
  if canSeePlayer {
    if isRotating && spd > minSpd {
      spd -= spdInterval * 2;

    } else if spd < maxSpd {
      spd += spdInterval;

    }

    if turnSpeed < maxTurnSpd turnSpeed += turnInterval;
    turnRate = turnSpeed / turnDivisor;
    
    if spd > maxSpd spd = maxSpd;
    if spd < minSpd spd = minSpd;
    speed = spd;
  }
  
  if (needsNewAngle) {
    if !canSeePlayer targetDir = random_range(0, 359);
    else targetDir = point_direction(x, y, playerInstance.x, playerInstance.y);
    if targetDir == direction {
      needsRotation = false;
    } else {
      needsRotation = true;
    }
  }
  
  if needsRotation {
    isRotating = true;
    needsNewAngle = false;
    angleDiff = angle_difference(direction, targetDir);
    angleDelta = sign(angleDiff) * turnRate * delta_time;
    direction -= angleDelta;
    
    var newAngleDiff = angle_difference(direction, targetDir);
    if abs(newAngleDiff) < abs(angleDelta) {
      direction = targetDir;
      angleDiff = 0;
    }
    
    if abs(angleDiff) == 0 {
      needsNewAngle = true;
      isRotating = false;
    }
    
    if canSeePlayer needsNewAngle = true;
  }

  image_angle = direction;
}

if (hp <= 0) {
  audio_sound_pitch(snd_enemydeath, random_range(0.8, 1.2));
  audio_play_sound(snd_enemydeath, 5, false);
  instance_destroy();
}
