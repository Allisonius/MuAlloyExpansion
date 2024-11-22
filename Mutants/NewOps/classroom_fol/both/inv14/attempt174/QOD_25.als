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
(all t: (one Teacher) {
(((t->((Class))) in Teaches) && (some g: (one Group) {
((((Class))->(((Person))->g)) in Groups)
}) && ((t->((Person))) in Tutors))
})
}





