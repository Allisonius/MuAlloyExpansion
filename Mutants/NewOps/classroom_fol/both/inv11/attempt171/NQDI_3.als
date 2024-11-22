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
(some s: (one Person) {s != t =>  {s != t =>  {
((c->(s->g)) in Groups)
}}})
}) => ((t->c) in Teaches))
})
}





