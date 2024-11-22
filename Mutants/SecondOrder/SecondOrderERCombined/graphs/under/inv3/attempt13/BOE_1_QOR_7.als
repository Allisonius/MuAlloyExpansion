module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some p: (one Node) {
((p.(~adj)) in p)
})
}