sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s:State | Event->s in Init.trans
}