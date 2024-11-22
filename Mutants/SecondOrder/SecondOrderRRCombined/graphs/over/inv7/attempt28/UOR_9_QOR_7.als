module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some n: (lone Node),x: (one Node) {
((n in (x.(^adj))) && (x in (n.(^adj))))
})
}