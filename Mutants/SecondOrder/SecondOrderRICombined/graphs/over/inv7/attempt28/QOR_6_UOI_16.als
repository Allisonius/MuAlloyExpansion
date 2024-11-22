module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(one n: (one Node),x: (one Node) {
((n in (x.(^adj))) && (x in (one (n.(^adj)))))
})
}