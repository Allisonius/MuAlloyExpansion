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
pred inv4[] {
((all t1: (one Track) {
(!(some t2: (one Track) {
(((t2->t1) in succs) => (t1 in Entry))
}))
}) && (all t1: (one Track) {
(some t2: (Track - Junction) {
(((t2->t1) in succs) => (!(t1 in Entry)))
})
}))
}





