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
pred inv11[] {
(some y: (one Person),z: (one Group),v: (one Teacher) {
(((((Class))->(y->z)) in Groups) => ((v->((Class))) in Teaches))
})
}





