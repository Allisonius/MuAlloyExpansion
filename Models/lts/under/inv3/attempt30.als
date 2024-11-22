sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s: State | iden & (Event->State) in (s.trans).~(s.trans)
}