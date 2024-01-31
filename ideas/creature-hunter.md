# Creature Hunter

Shoot creatures to survive and exit the park.

## Themes

- Combat and survival
- Strategy and planning
- Exploration and platforming
- Collection and completion

## Environment

A low-poly park with grass, trees, and rocks. Light, happy feeling environment with birds chirping in the background.

The overall feeling of the game should be that you are in control of the experience. You can keep your distance and play slowly and methodically and treat it like a puzzle to be solved, or you can rush in and fight up close like a frenzied zombie survival game where you're being chased down by the creatures.

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
  - Once alerted, will chase you until dead
  - They're weak but relentless. They'll never stop coming for you, but you can make some space by storing your weapons and running away.
- Spiders
  - 20 health, 20 damage
  - 60% movement speed
  - Medium awareness radius
  - Once alerted, will chase you until you escape awareness radius
  - They're a little stronger, but you can outrun them even with a weapon drawn and they'll stop pursuing if you get far enough away.
- Scorpions
  - 50 health, 50 damage
  - 50% movement speed
  - Large awareness radius fixed to spawn point
  - Once alerted, will attack you within radius of spawn point
  - They're strong and territorial. They'd rather defend their position than chase you down. Still, your best bet is to keep your distance.
- Hornets
  - 50 health, 25 damage
  - 50% movement speed, can fly
  - Medium awareness radius
  - Once alerted, will chase you until dead
  - They're strong, they can fly, and they'll never stop chasing you. Prioritize them over other threats.

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

- **Collateral:** Kill multiple creatures with a single shot
- **Perfectionist:** Exit without taking any damage
- **Exterminator:** Exit after killing every creature
- **Collector:** Exit after collecting every item
- **Masochist:** Achieve Perfectionist, Exterminator, and Collector in a single run
- **Pacifist:** Exit without killing any creatures

## Implementation Ideas

The main menu could be the same scene as the game, with the character standing in the initial safe area in third-person view facing the screen and the camera position fixed.The menu would just be an overlay. When you hit the Start button, the menu disappears, the creatures spawn in, and you take control of the character. There's no loading transition, you're just immediately in the action.
