module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(no var123456 : State { (let t = ({ x: (one var123456),y: (one var123456) {
(some ((x.trans).y))
} }) {
(all s: (one (Init.(^t))) {
(Init in (s.(^t)))
})
})})
}





