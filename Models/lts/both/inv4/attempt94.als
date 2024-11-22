sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
some Init and all i:Init|  no ((State-Init)  - (Event.^(i.trans)) )
}