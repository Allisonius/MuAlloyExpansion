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
(some t: (one Person) {
(all s: (one Person),c: (one Class),g: (one Group) {
((((c->(s->g)) in Groups) && ((t->c) in Teaches) && (s in Student) && (t in Teacher)) => ((t->s) in Tutors))
})
})
}





