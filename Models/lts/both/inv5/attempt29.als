sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s1, s2 : State | one Event.(s1.trans) & Event.(s2.trans)
}