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
(all t: (one Person),c: (one Class) {
(((t->c) in Teaches) => (some g: (one Group),s: (Person & Teacher) {
((c->(s->g)) in Groups)
}))
})
}





