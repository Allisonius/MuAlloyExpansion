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
(all t1,t2,t: (one Track) {
(((t1 in Entry) && (t2 in Exit)) <=> ((t1 in (t.succs)) && (t2 in (t.succs))))
})
}





