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
(no x,y: (one Track) {
(all z: (one Track) {
((((x->y) in succs) && ((z->y) in succs) && (x != z)) => (y in Junction))
})
})
}





