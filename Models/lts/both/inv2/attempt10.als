sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv2{
one i:Init | i not in Event.(State.trans)
}