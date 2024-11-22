sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all e:Event | e->State in State.trans
}