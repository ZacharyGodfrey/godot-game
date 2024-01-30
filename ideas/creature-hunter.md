# Creature Hunter

Shoot creatures to survive and exit the park.

## Themes

- Combat and survival
- Strategy and planning
- Exploration and platforming
- Collection and completion

## Environment

A low-poly park with grass, trees, and rocks. Light, happy feeling environment with birds chirping in the background.

## Movement

You can run and jump, and you can store your weapons to switch to third-person view and run faster.

- Third-person view and 100% movement speed when weapons are stored
- First-person view and 75% movement speed when a weapon is drawn
- ADS view and 50% movement speed when aiming a weapon

## Health

- Health starts at 100 and does not regenerate
- No fall damage from any height
- Game resets on death

## Creatures

Names are temporary.

- Ants
  - 10 health, 10 damage
  - 75% movement speed
  - Small awareness radius
  - Once aware, will chase you until dead
- Spiders
  - 20 health, 20 damage
  - 60% movement speed
  - Medium awareness radius
  - Once aware, will chase you until you escape awareness radius
- Scorpions
  - 50 health, 50 damage
  - 50% movement speed
  - Large awareness radius fixed to spawn point
  - Once aware, will attack you within radius of spawn point
- Hornets
  - 50 health, 25 damage
  - 50% movement speed, can fly
  - Medium awareness radius
  - Once aware, will chase you until dead

## Weapons

- Pistol
  - 10 damage
  - Close range (large awareness radius), hitscan
  - Reload every 10 shots
  - Infinite ammo
- Rifle
  - 50 damage
  - Long range, hitscan
  - Reload after every shot
  - Infinite ammo

## Challenges

- **Perfectionist:** Exit without taking any damage
- **Exterminator:** Exit after killing every creature
- **Collector:** Exit after collecting every item
- **Masochist:** Achieve Perfectionist, Exterminator, and Collector in a single run
- **Pacifist:** Exit without killing any creatures
