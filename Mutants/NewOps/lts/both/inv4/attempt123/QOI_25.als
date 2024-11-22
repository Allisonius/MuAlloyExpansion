module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some var123456 : State { (let t = ({ s2,s1: (one var123456) {
(some e: (one Event) {
((s1->(e->s2)) in trans)
})
} }) {
(var123456 in (Init.(^t)))
})})
}





