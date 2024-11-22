sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x : State | x.trans in State.trans
}