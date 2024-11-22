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
pred inv12[] {
(some c: (one Class) {
(all t: (one Teacher) {
(((t->c) in Teaches) && (some g: (one Group),s: (one Student) {
((c->(s->g)) in Groups)
}))
})
})
}





