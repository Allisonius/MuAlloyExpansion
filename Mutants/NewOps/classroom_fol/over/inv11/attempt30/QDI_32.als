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
(all p: (one Person),c: (one Class),g: (one Group) {
(some t: (Person + Student) {
(((c->(p->g)) in Groups) => ((t->c) in Teaches))
})
})
}





