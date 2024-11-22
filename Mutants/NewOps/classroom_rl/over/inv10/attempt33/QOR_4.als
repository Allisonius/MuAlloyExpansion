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
pred inv10[] {
(one c: (one Class) {
(all s: (one Student) {
(one g: (one Group) {
((c->(s->g)) in Groups)
})
})
})
}





