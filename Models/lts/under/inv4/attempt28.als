sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
Init.*{s1, s2: State | some e: Event | s1->e->s2 in trans} = State
}