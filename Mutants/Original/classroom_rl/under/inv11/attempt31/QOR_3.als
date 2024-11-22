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
(one c: (one Class) {
(((#((c.Groups).Teacher)) > 0) => (some p: (one Person),g: (one Group) {
((c->(p->g)) in Groups)
}))
})
}





