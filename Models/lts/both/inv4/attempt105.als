sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv4{
all i:Init | some e:Event | some Init implies State in e.*(i.trans)
}