sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s1,s2 :State | Event->s2 in s1.trans
}