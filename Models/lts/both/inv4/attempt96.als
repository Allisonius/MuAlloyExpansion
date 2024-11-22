sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s:State-Init| some e:Event | s in ^(trans.e).Init
}