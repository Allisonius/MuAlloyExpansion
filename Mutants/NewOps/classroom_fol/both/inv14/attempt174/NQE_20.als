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
(some c: (one Class),s: (one Person) {
(all t: (one Teacher) {
(((t->c) in Teaches) && (some g: (one Group) {
((c->(s->g)) in Groups)
}) && ((t->s) in Tutors))
})
})
}





