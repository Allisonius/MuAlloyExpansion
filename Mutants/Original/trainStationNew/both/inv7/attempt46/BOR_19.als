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
(all t: (one Track) {
(one e: (one Entry),ex: (one Exit) {
(((t in (t.succs)) && (ex in (e.succs))) => (e !in (ex.succs)))
})
})
}





