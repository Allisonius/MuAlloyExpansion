module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone e1: (one Node) {
(Node in (some ((e1.(*adj)) + ((^adj).e1))))
})
}