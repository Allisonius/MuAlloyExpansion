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
(some t: (one Teacher) {
(some g: (one Group) {
(some c: (one Class) {
(((c->(((Student))->g)) in Groups) => ((t->((Student))) in Tutors))
})
})
})
}





