if DMcooldown[0] <= 0 {
hp[0]--;
knockback = other.knockback[1] * sign(x-other.x);
DMcooldown[0] = DMcooldown[1];
flash[0] = flash[1];
}