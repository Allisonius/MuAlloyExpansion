module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let t = ({ x: (one State),y: (one State) {
(some ((x.trans).y))
} }) {
(all i: (State + Init) {
(all s: (one (i.(*t))) {
(i in (s.(^t)))
})
})
})
}





