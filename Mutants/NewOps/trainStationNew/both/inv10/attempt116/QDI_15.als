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
(all t1,t2: (one Track),s: (Signal - Speed) {
(((t2 in (t1.succs)) && (Junction in t2)) => ((s in Semaphore) && (s in (t1.signals))))
})
}





