sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s1, s2:State | one e:Event | lone s1->e->s2
}