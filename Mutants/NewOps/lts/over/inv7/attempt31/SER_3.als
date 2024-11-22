module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let adj = ({ x,y: (one Event) {
(some ((x.trans).y))
} }) {
(all s: (one (Init.(^adj))) {
(Init in (s.(^adj)))
})
})
}





