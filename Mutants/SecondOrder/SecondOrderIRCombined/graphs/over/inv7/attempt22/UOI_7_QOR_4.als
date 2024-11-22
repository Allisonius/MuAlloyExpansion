module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(no n: (one Node) {
((some (~adj)) && (Node in (n.(^adj))))
})
}