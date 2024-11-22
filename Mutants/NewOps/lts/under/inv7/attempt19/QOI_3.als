module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(no var123456 : State { (let adj = ({ x,y: (one var123456) {
(some e: (one Event) {
((x->(e->y)) in trans)
})
} }) {
((some ((Init.(^adj)) - Init)) => (some ((((Init.(^adj)) - Init).(^adj)) & Init)))
})})
}





