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
(some g: (one Group),t: (one Teacher) {
((((t->((Class))) in Teaches) && ((((Class))->(((Student))->g)) in Groups)) => ((t->((Student))) in Tutors))
})
}





