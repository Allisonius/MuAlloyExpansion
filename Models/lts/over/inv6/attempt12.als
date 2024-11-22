sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv6{
all e:Event | some s:State | e in ~(Init.trans)[s]
}