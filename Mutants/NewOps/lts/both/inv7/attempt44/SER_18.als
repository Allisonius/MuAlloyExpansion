module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s: (one ((Event.(Event.trans)) - Init)) {
(Init in ((^({ x,y: (one State) {
(some ((x.trans).y))
} })).s))
})
}





