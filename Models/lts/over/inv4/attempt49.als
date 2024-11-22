sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
some e:Event| State in e.^(Init.trans)
}