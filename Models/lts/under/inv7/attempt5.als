sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all s: State.trans.Event | s in s.^{y,x: State | some x.trans.y}
}