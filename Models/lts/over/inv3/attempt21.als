sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv3{
all  e1:Event | #(e1.(State.trans))<1
}