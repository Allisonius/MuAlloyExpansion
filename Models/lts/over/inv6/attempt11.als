sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv6{
all e:Event | one s:State | e in ~(Init.trans)[s]
}