module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node) {
(((n.(^adj)) in (Node - n)) || ((Node - n) in (n.(~(^(~adj))))))
})
}