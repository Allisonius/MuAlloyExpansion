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
(some p: (one Person),g: (one Group),t: (one Teacher) {
(((((Class))->(t->g)) in Groups) => ((((Class))->t) in Teaches))
})
}





