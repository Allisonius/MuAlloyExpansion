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
((some z: (one Group) {
((((Class))->(((Student))->z)) in Groups)
}) && (some v: (one Teacher) {
(((v->((Class))) in Teaches) => ((v->((Student))) in Tutors))
}))
}





