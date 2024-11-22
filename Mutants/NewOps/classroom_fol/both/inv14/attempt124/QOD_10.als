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
(some t: (one Teacher),c: (one Class),g: (one Group) {
(((t->((Person))) in Tutors) => (((t->c) in Teaches) && ((c->(((Person))->g)) in Groups)))
})
}





