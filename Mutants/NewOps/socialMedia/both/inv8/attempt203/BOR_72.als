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
pred inv8[] {
(all x,y,z: (one univ) {
((((x in User) && (y in Ad) && ((x->y) in sees) && ((z->y) in posts)) => ((x->z) in follows)) || ((x->z) !in suggested))
})
}





