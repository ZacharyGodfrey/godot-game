# Creature Hunter

In this third-person shooter, you are a lone park ranger trapped in a park full of dangerous creatures. Armed with a pistol and hunting rifle, you must navigate the terrain and make your way to the park's exit. Each type of creature presents a unique challenge, so choose your battles carefully if you choose to engage.

## Themes

- Combat and survival
- Strategy and planning
- Exploration and platforming
- Collection and completion

## Environment

A low-poly park with grass, trees, rocks, and cliffs. A bright, happy feeling environment with birds chirping in the background.

The overall feeling of the game should be that you are in control of the experience. You can keep your distance and treat it like a puzzle to be slowly and methodically solved, or you can rush in and fight up close like a frenzied survival game where you're being chased down until the very end.

## Actions and Controls

- Look (mouse, stick)
- Move (WASD, stick)
- Jump (space, A)
- Draw and store your weapon (F, B)
- Switch weapons (C, Y)
- Aim (right mouse, left trigger)
- Shoot (left mouse, right trigger)
- Reload (R, X)

## Perspective and Speed

- Most actions are performed from the (default) third-person wide perspective
- Holding the aim button with the pistol drawn will pull the character to the bottom left corner in a third-person tight perspective
- Holding the aim button with the rifle drawn will switch to a first-person scoped perspective

- Third-person wide view has 100% movement speed when weapons are stored
- Third-person wide view has 85% movement speed when weapons are drawn
- Third-person tight view (aiming pistol) has 75% movement speed when weapons are drawn
- First-person view (aiming rifle) has 50% movement speed when weapons are drawn

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

## Tutorials (Godot 4)

### General

- [Project Options](https://www.youtube.com/watch?v=3iGHpha-DmE)
- [Directional Light](https://www.youtube.com/watch?v=ogtDKlTnnqo)
- [Sky](https://www.youtube.com/watch?v=SzNmHPr4vf8)
- [Grass](https://www.youtube.com/watch?v=3ftcGTp-Se8)
- [Water](https://www.youtube.com/watch?v=7L6ZUYj1hs8)

### FPS

- [Basic Setup Repo](https://github.com/StayAtHomeDev-Git/FPS-Godot-Basic-Setup/tree/main)
- [Movement](https://www.youtube.com/watch?v=N-jh8qc8tJs)
- [Crosshair](https://www.youtube.com/watch?v=B-PvZgVdU4o)
- [Debug Panel 1](https://www.youtube.com/watch?v=aRiwRgJC1K4)
- [Debug Panel 2](https://www.youtube.com/watch?v=P-Owt8ifC-s)
- [State Machine 1: Setup](https://www.youtube.com/watch?v=VtJXqRsFezY)
- [State Machine 2: Walking](https://www.youtube.com/watch?v=BxBmHNh4j10)
- [State Machine 3: Sprinting](https://www.youtube.com/watch?v=GcQTw0IqF4U)
- [State Machine 4: Optimization](https://www.youtube.com/watch?v=_sVXjXLK74o)
- [Jumping 1: Basic Jump](https://www.youtube.com/watch?v=4HI_iOM5LfI)
- [Jumping 2: Jump Strength](https://www.youtube.com/watch?v=4Fwp7A6eiQg)
- [Jumping 3: Jump Animation](https://www.youtube.com/watch?v=dtBdJzSQ4FY)
