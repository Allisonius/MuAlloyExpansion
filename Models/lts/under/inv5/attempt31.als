sig State {
        trans : Event -> State
}
sig Init in State {}
sig Event {}


pred inv5{
all e:Event, s1,s2:State | e in (Init.trans)[s1] implies e in (Init.trans)[s2]
}