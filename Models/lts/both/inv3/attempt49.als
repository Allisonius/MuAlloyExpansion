sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s:State | all e1,e2:Event | e1->s in s.trans and e2->s in s.trans implies e1=e2
}