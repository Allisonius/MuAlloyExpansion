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
pred inv5[] {
(some c: (one Person) {
(some g: (one Group) {
(some t: (one Teacher) {
((c->(t->g)) in Groups)
})
})
})
}





