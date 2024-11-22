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
pred inv7[] {
(all t: (one Track) {
(all k: (Track - Exit) {
(((t->k) in succs) => (all z: (one Track) {
(((k->z) in succs) => ((z->t) !in succs))
}))
})
})
}





