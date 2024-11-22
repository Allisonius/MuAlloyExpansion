sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all s:State, e:Event | some e.(s.trans)
}