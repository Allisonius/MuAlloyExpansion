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
pred inv2[] {
(all s: (one Signal) {
(some t1,t2: (one Track) {
((s in (t1.succs)) && (s in (t2.signals)) && (t1 = t2))
})
})
}





