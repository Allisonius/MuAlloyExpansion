sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
all e:Event,s1,s2:State |some e1:Event| s1->e->s2 in trans implies s2->e1->s1 in trans
}