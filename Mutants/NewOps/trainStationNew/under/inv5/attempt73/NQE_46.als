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
pred inv5[] {
(some l: (one Track) {
(some t: (one Track) {
(all j: (one Junction) {
((t != l) && (j in (t.succs)) && (j in (l.succs)))
})
})
})
}





