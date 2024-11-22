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
pred inv3[] {
(all ex: (one Exit),j: (one Junction),e: (one Entry),t: (one Track) {
(((ex.succs) !in j) && (e !in (ex.succs)) && (ex !in (ex.succs)) && (t !in (ex.succs)))
})
}





