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
((((c->(s->g)) in Groups) && (t in Teacher) && (s in Student) && ((t->c) in Teaches)) => ((t->s) in Tutors))
})
})
}





