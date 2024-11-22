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
(((c->(((Person))->g)) in Groups) => (some t: (one Teacher) {
(((t->((Person))) in Tutors) && ((t->c) in Teaches))
}))
})
}





