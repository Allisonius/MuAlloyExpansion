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
(all t: (one Track),ex: (one Exit),e: (Track - Exit),j: (one Junction) {
((t !in (t.succs)) && (no (ex.succs)) && (e !in (t.succs)))
})
}





