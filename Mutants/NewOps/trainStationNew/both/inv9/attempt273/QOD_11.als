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
pred inv9[] {
(some t2: (one Track) {
(((t2 in (((Track)).succs)) && (no (Junction & t2))) => (Semaphore !in (((Track)).signals)))
})
}





