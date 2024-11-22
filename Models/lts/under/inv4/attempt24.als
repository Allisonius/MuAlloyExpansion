sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
no Init  implies no State and  all i :Init|some (State-Init).^~(i.trans)
}