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
pred inv3[] {
((all a: (Track - Exit),a2: (one Track) {
((a->a2) !in succs)
}) && (all a: (one Track),a2: (one Track) {
(((a->a2) !in succs) => (a in Exit))
}))
}





