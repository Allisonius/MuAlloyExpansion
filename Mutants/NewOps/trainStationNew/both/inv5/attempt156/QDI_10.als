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
(all j: (Track & Entry) {
(some t: (one Track) {
(((#t) >= 2) && (j in (t.succs)))
})
})
}





