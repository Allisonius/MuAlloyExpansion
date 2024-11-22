sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all s1,s2:State, e1,e2,e3,e4:Event  | s1->e1->s2 in trans implies s2->e2->s1 in trans
}