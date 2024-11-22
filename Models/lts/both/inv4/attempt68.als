sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all i : Init, s : State | s in i.*(trans[Event])
}