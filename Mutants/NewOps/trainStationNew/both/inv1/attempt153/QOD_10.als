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
(all y: (one Exit) {
(all z: (one Entry) {
((y in (((Track)).succs)) && (z in (((Track)).succs)) && (((Track)) != y) && (((Track)) != z) && (y != z) && (((Track)) !in (((Track)).succs)))
})
})
}





