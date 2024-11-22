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
(lone t: (one Track) {
(some e: (one Track) {
(all ts: (one Track) {
((((t->e) in succs) && (t != ts) && ((e->ts) !in succs)) => (e in Exit))
})
})
})
}





