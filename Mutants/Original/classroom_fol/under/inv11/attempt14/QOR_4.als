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
(one c: (one Class),s: (one Student),g: (one Group) {
(some t: (one Person) {
(((c->(s->g)) in Groups) => (((t->c) in Teaches) && (t in Teacher)))
})
})
}





