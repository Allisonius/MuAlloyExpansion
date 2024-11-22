module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv7[] {
((all disj x,y,z: (one User) {
((((x->y) in follows) && (follows in (y->z)) && ((x->z) !in follows)) <=> ((x->z) in suggested))
}) && (all u: (one User) {
((u->u) !in follows)
}))
}





