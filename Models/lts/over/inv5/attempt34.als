sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
not some disj s1, s2:State | (s1.trans) != (s2.trans)
}