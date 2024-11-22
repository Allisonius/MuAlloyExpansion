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
((all t: (one Track),ex: (one Exit) {
((t !in (t.succs)) && (no (ex.succs)))
}) && (all e: (Track + Exit),ex: (one Exit),j: (one Junction) {
(((ex in (e.succs)) => (e !in (ex.succs))) && (e !in (Track.succs)))
}))
}





