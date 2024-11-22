sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s,s1:State,e:Event|some s2,s3:State | s->e->s2 in trans implies s1->e->s3 in trans
}