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
(all x: (Track - Junction) {
(some y,z: (one Track) {
((x in Junction) => (((y->x) in succs) && ((z->x) in succs)))
})
})
}





