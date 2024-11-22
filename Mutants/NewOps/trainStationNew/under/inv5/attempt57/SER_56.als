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
(all t,t2: (one Track) {
(((t in (t2.succs)) && (some (t & (((Semaphore - t2) - t).succs)))) => (t in Junction))
})
}





