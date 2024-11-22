sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all i:Init| no trans implies one State or     no ((State-Init)  - (Event.^(i.trans)) )
}