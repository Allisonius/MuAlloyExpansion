sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s:State | lone e:Event {  e->s in State.trans }
}