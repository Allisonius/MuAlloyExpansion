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
(some t: (one Person) {
(some c: (one Class),s: (one Person),g: (one Group) {
(((t in Teacher) && (s in Student)) => (((c->(s->g)) in Groups) && ((t->c) in Teaches)))
})
})
}





