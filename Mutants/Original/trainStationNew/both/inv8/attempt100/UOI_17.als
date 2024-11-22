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
pred inv8[] {
(all e: (one Entry) {
(some t: (one Track) {
(((~(e->t)) in succs) && (some k: (one Track) {
(((t->k) in succs) && (k in Exit))
}))
})
})
}





