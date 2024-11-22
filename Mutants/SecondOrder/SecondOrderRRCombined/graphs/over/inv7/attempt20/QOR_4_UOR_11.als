module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(no n: (one Node) {
((lone adj) && (Node = (n.(^adj))))
})
}