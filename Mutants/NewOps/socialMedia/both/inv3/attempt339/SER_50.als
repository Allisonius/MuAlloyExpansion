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
pred inv3[] {
(all u,u2: (one User),p: (one Photo) {
(((u->p) in sees) => ((((u->u2) in follows) && (p !in Photo)) || (p in Ad)))
})
}





