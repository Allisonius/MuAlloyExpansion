sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s: State | (s in Init) or (some pre:State | (not pre in s) and (pre in trans.s.Event))
}