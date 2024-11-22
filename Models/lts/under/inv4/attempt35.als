sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
no Init  implies no State and  all i :Init|(State-Init)in  (State-Init).~(i.trans)
}