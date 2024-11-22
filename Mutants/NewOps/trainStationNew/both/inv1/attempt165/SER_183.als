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
((all x: (one Exit) {
(all y: (one Track) {
((x->y) !in succs)
})
}) && (all x: (one Entry) {
(all y: (one Track) {
((y->x) !in succs)
})
}) && (all x: (one Junction) {
(some y,z: (one Track) {
(((y->x) in succs) && ((x->z) in succs))
})
}) && (some x: (one Track) {
(some y: (one Entry) {
((((y->x) in succs) && (y in Entry)) => (some z: (one Track) {
((z in Exit) && ((x->z) in succs))
}))
})
}))
}





