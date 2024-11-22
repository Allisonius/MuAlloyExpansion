sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all s:State, s1:State, e:Event | lone e->s1
}