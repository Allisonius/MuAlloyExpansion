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
pred inv13[] {
(one t: (one Teacher),s: (one Student) {
(((t->s) in Tutors) => ((t in Teacher) && (s in Student)))
})
}





