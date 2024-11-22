sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all i:Init, s:State, e:Event | i!=s and i->e->s in trans
}