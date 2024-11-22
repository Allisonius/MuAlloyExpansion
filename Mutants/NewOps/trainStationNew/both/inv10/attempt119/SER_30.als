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
(all t1: (one Track) {
(some t2: (one Junction) {
(((t1 in (t2.(^succs))) && (one (Junction & t2))) => (Semaphore in (t1.signals)))
})
})
}





