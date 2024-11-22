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
(all e: (one Track) {
(all j: (one Junction) {
((e !in (j.succs)) => (lone s: (one Semaphore) {
(s !in (e.signals))
}))
})
})
}





