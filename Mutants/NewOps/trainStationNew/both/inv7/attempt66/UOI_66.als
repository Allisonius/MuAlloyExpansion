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
}) && (all disj t1,t2: (one Track) {
((t1 in (t2.succs)) => (t2 !in (t1.(~succs))))
}) && (all ex: (one Exit),e: (one Entry),j: (one Junction) {
((no (ex.succs)) && (e !in (j.succs)))
}))
}





