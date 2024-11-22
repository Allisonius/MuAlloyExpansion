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
(some t1: (one Track) {
(one t2: (one Track) {
((t1 in Junction) && (t1 !in Exit) && (t2 in Exit) && (t2 !in Entry))
})
})
}





