sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x : State | State.trans in x.trans
}