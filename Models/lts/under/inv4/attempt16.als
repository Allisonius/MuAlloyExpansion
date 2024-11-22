sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
Init.*{s1, s2: State | some s1.trans.s2} = State
}