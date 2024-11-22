module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(no n: (one Node) {
(after (((Node - n) in (n.(^adj))) || (Node in (n.(^(~adj))))))
})
}