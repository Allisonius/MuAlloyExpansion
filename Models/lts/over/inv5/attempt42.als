sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all x : State | some e : Event | x.trans = State.trans
}