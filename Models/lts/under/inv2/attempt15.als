sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
all s1,s2:State | s1 in Init and s2 in Init implies s1=s2
}