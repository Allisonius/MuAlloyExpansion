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
(some c: (one Class) {
(some t: (Person & Student),g: (one Group) {
((c->(t->g)) in Groups)
})
})
}





