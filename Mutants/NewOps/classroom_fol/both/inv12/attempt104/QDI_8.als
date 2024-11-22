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
(all t: (Person - Student) {
(some g: (one Group),c: (one Class),s: (one Student) {
(((c->(s->g)) in Groups) => ((t->c) in Teaches))
})
})
}





