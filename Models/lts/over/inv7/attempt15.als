sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv7{
let ss = {x,y : State | y in Init and some y.trans.x} {
   		ss = ~ss 
  }
}