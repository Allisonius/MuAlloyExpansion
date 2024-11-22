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
(all s: (one Person) {
(some c: (one Class),g: (one Group) {
(((c->(s->g)) in Groups) && (((((Teacher))->c) in Teaches) && ((((Teacher))->s) in Tutors)))
})
})
}





