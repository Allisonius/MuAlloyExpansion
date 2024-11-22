module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(no p: (one Node) {
((p.(~adj)) in p)
})
}