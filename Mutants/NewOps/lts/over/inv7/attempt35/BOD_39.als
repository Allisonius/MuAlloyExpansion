module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let adj = ({ x,y: (one State) {
(some ((x.trans).y))
} }) {
(all s: (one (Init.(^adj))) {
((Init in s) && (lone Init))
})
})
}





