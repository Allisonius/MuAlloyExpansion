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
pred inv14[] {
(all s: (one Student),c: (one Class) {
(some g: (one Group),t1,t2: (one Teacher) {
((((c->(s->g)) in Groups) && ((t1->c) in Teaches) && ((t2->c) in Teaches)) => (((t1->s) in Tutors) && ((t2->s) !in Tutors)))
})
})
}





