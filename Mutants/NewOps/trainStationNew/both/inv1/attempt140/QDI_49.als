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
pred inv1[] {
(all t: (one Track) {
(some exit: (one Exit) {
(some entry: (Track & Junction) {
((exit in (t.succs)) && (entry in (t.succs)))
})
})
})
}





