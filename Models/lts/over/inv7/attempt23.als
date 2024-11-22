sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all x : State, y : Init, z : Event | trans in y one -> one z one -> one x and z != y
}