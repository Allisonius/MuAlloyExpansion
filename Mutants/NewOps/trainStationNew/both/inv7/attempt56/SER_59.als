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
pred inv7[] {
((all t: (one Track) {
(t !in (t.succs))
}) && (all e: (one Track),ex: (one Exit),j: (one Junction) {
(((ex in (e.succs)) => (e !in (ex.succs))) && (j !in (ex.succs)))
}))
}





