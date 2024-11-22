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
pred inv1[] {
(all x: (one Track) {
(some y: (one Track) {
((y in Entry) => (some z: (one Track) {
((z in Exit) && ((x->z) in succs))
}))
})
})
}





