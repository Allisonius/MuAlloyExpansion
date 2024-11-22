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
pred inv8[] {
(all t: (one Track) {
((t in Entry) => (all t1: (one Track) {t1 != t =>  {t1 != t =>  {
((t1 in Exit) => (t1 in (t.succs)))
}}}))
})
}





