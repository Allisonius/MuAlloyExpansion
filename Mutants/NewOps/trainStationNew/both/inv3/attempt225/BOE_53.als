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
(all t: (one Track),a: (one (Track - t)) {
((((t->a) !in succs) && (succs in (a->t))) => (t in Exit))
})
}





