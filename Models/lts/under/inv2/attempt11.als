sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
all s1,s2:Init | s1=s2
}