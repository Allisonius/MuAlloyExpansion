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
pred inv5[] {
(all t1: (one Track) {
(some t2,t3: (Track - Entry) {
(((t1 in (t2.succs)) && (t1 in (t2.succs))) => (one (Junction & t1)))
})
})
}





