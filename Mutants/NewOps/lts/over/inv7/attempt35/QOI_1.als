module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all var123456 : State { (let adj = ({ x,y: (one var123456) {
(some ((x.trans).y))
} }) {
(all s: (one (Init.(^adj))) {
((Init in (s.(^adj))) && (lone Init))
})
})})
}





