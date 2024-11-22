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
(some c: (one Class),g: (one Group) {
(((((Teacher))->((Person))) in Tutors) => (((((Teacher))->c) in Teaches) && ((c->(((Person))->g)) in Groups)))
})
}





