sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s: State.trans.Event | s.^{y,x: State | some e : Event | x->e->y in trans} = Init
}