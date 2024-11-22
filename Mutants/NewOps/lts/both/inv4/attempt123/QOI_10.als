module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no var123456 : Init { (let t = ({ s2,s1: (one State) {
(some e: (one Event) {
((s1->(e->s2)) in trans)
})
} }) {
(State in (var123456.(^t)))
})})
}





