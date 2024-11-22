sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv6{
some s:State |all e:Event| some trans.(e->s)
}