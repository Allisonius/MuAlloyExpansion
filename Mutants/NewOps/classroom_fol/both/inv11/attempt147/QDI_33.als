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
(all c: (one Class),g: (one Group),s: (one Student) {
(some t: (Person & Student) {
(((c->(s->g)) in Groups) => ((t->c) in Teaches))
})
})
}





