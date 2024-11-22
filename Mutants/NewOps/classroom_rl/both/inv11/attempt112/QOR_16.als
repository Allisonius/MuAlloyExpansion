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
(all c: (one Class),g: (one Group) {
(no t: (one Teacher),s: (one Student) {
((s in ((c.Groups).g)) => (((t->c) in Teaches) && ((t->g) in (c.Groups))))
})
})
}





