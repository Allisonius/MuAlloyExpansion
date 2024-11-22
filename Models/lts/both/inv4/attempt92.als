sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all i:Init | some e:Event | no  (State  - (e.*(i.trans) ))
}