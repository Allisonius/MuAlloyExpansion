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
(all t,t1: (one Track) {
(((t != t1) && (t in ((Track - t1).succs)) && (t in (t1.succs))) <=> (t in Semaphore))
})
}





