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
(all x: (one Person) {
(some t: (one Teacher),g: (one Group) {
((x->(t->g)) in Groups)
})
})
}





