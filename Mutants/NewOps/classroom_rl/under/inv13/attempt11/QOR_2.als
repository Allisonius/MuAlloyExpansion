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
(no p: (one Person),t: (one Teacher) {
(((t->p) in Tutors) => ((t in Teacher) && (p in Student)))
})
}





