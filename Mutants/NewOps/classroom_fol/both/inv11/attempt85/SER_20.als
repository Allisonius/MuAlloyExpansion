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
(all c: (one Student),t: (one Teacher),s: (one Student),g: (one Group) {
(((t->c) in Teaches) => ((c->(s->g)) in Groups))
})
}





