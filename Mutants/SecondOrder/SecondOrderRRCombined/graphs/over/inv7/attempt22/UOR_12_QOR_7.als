module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some n: (one Node) {
((lone adj) && (Node in (n.(^adj))))
})
}