sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
let t = {x,y : State | some z : Event | x->z->y in trans} |
	some ^t implies some Init.^(~t)
}