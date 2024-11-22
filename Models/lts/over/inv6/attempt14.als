sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv6{
all e:Event|some s:State | some trans.(e->s) or one trans.(e->s)
}