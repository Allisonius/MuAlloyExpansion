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
(some g: (one Group) {
(one c: (one Class),s: (one Student) {
((c->(s->g)) in Groups)
})
})
}





