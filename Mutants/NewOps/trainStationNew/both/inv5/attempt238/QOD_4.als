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
(((t1 in (((Track)).succs)) && (t1 in (((Track)).succs))) => (no (Junction & t1)))
})
}





