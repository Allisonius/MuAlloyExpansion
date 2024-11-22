sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s: State | some (*{s1, s2: State | s1->Event->s2 in trans}.s & Init)
}