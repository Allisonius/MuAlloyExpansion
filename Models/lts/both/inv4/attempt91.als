sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s:State, s1:State, e:Event | e->s1 in s.trans
}