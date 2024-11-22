sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all s:State, s1:State, e:Event | lone s.trans.Event
}