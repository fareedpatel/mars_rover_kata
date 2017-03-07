Mars_rover kata

Objects 
Mars < Plateau(grid[x,y]), 
Rover(postition, Direction)
Messenger ( gives instructions and gets back position updates from the camera)
Camera
Navigation - interprets nasa and moves the object which it is assigned to
Position - Gives Co-ordinates and position of the object we call it for.

User Stories
As a user,
So that I can visit Mars, 
I should be able to create a new Mars object




As a user,
So that I can create a grid,
I should be able to set up a grid using x and y co-ordinates

As a user,
So that I can view the surface of Mars,
I can land a rover object on the plateau 

As a user,
So that I have control over the landing position,
I should be able to send a message telling the rover where to land.

As a user,
So that I have control over the landing position,
It should not land outside of the plateau

As a user,
So that I know where the rover is,
The rover should record its position.

As a user,
So that I can control the rover,
I should be able to send a message that moves it to a new position.

As a user,
So that I know where the rover is,
It should send back its position after I have finished giving it directions.