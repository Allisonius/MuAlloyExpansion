sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s: State | some (*{s1, s2: State | s2 in s1.trans[Event]}.s & Init)
}