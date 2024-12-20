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
((all t: (one Track) {
(some j: (Track & Entry) {
(some s: (one Semaphore) {
((j in (t.succs)) => (s in (t.signals)))
})
})
}) && (all t: (one Track) {
((some ((t.signals) & Semaphore)) => (some ((t.succs) & Junction)))
}))
}





