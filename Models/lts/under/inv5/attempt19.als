sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s:State | s.~(State.trans) in Event
}