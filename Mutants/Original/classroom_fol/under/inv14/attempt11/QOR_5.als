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
(some t: (one Teacher),c: (one Class),p: (one Person),g: (one Group) {
((((t->c) in Teaches) && ((c->(p->g)) in Groups)) => ((t->p) in Tutors))
})
}





