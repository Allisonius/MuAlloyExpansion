module unknown
open util/integer [] as integer
sig Track {
succs: (set Track),
signals: (set Signal)
}
sig Junction in Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
sig Semaphore extends Signal {}
sig Speed extends Signal {}
pred inv10[] {
(all t: (one Track) {
((some t2: (Track & Entry) {
(((t->t2) in succs) && (t2 in Junction))
}) => (some s: (one Signal) {
(((t->s) in signals) && (s !in Semaphore))
}))
})
}





