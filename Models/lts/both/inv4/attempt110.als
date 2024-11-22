sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all i:Init| some State implies some Init and    no ((State-Init)  - (Event.^(i.trans)) )
}