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
pred inv12[] {
(all g: (one Group),s: (one Student),t: (one Teacher) {
(all c: (one Class) {
(((t->c) in Teaches) => ((c->(s->g)) in Groups))
})
})
}





