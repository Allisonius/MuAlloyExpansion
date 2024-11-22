sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s : State | some e : Event | one e.(s.trans)
}