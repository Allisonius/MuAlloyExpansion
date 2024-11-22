sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s1,s2 : State, e : Event | e.(s1.trans) = e.(s2.trans)
}