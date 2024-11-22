sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s:State | some s1,s2:State, e:Event |  (s.trans = e->s2 and s.trans = e->s1) implies s1=s2
}