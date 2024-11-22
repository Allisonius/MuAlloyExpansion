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
(all t: (one Track),s: (one Semaphore) {
(((t !in Junction) && ((t.succs) = none)) || (((t !in Junction) && (no ((t.signals) & Junction))) => (s !in (t.signals))))
})
}





