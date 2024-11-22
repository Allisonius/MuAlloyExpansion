sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s1,s2:State | State.(s1.trans) = State.(s2.trans)
}