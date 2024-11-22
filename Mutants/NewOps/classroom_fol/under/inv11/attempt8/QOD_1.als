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
((some g: (one Group),s: (one Person) {
((((Class))->(g->s)) in Groups)
}) => (some t: (one Teacher) {
((t->((Class))) in Teaches)
}))
}





