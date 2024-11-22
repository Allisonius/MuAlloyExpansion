sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all s1, s2:State, e:Event | s1->e->s2 in trans implies s2->e->s1 in trans
}