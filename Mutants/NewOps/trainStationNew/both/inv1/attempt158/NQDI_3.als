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
((((y->x) in succs) && (y in Entry)) => (some z: (one Track) {z != y =>  {z != y =>  {
((z in Exit) && (all t: (one Track) {
((z->t) !in succs)
}) && ((x->z) in succs))
}}}))
})
})
}





