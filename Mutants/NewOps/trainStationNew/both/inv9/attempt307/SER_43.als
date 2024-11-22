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
(all disj t,t2: (one Track),s: (one Semaphore) {
(((t2 in Signal) && (t2 !in (t.succs)) && (t !in Entry) && (t !in Exit)) => (s !in (t.signals)))
})
}





