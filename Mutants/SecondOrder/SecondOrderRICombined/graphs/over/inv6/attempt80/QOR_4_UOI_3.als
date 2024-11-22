module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no n: (one Node) {
((Node - n) in (some ((n.(^adj)) - n)))
})
}