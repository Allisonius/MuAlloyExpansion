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
(no disj t,t2: (one Track),s: (one Semaphore),j: (one Junction) {
(((t2 in Junction) && (t2 !in (t.succs))) => (s !in (t.signals)))
})
}





