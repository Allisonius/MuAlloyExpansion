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
(one c: (one Class),g: (one Group) {
(some t: (one Teacher) {
((some ((c.Groups).g)) => ((t->c) in Teaches))
})
})
}





