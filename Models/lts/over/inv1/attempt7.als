sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv1{
let k = State.trans | iden in ~k.k
}