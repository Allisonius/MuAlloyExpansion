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
((some g: (one Group) {
(some s: (one Person) {
(Groups in (c->(s->g)))
})
}) => ((t->c) in Teaches))
})
}





