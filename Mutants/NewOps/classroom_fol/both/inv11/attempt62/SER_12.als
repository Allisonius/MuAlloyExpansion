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
(all c: (one Class),g: (one Class) {
(some t: (one Teacher) {
((t in ((c.Groups).g)) => ((t->c) in Teaches))
})
})
}





