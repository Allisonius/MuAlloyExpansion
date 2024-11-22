sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all x : Init, y : State | State in y.(x.trans)
}