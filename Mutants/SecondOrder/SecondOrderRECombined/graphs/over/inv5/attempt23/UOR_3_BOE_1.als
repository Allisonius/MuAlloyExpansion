module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(no n1: (one Node) {
((n1.(*adj)) in n1)
})
}