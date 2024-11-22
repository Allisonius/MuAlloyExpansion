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
(all x: (one Photo),a: (one Ad) {
(((x->a) in sees) <=> (all z: (one User) {
((((z->a) in posts) => ((x->z) in follows)) || ((x->z) in suggested))
}))
})
}





