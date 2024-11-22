module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all var123456 : State { (let t = ({ x: (one var123456),y: (one var123456) {
(some ((x.trans).y))
} }) {
(Init in (Init.(^t)))
})})
}





