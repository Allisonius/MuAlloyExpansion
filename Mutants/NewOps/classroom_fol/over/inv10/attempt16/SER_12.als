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
pred inv10[] {
(all p: (one Person) {
(some c: (one Class),g: (one Group) {
((c->(c->g)) in Groups)
})
})
}





