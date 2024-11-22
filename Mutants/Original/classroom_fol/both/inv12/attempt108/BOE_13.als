module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv12[] {
(all c: (one Class),g: (one Group) {
(all t1,t2: (one Teacher) {
((t1 = t2) => (((c->(t1->g)) in Groups) && ((c->(t2->g)) in Groups)))
})
})
}





