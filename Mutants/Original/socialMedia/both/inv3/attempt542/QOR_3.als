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
(lone u1: (one User) {
(all ph: (one Photo) {
(some inf: (one Influencer) {
(((u1->ph) in sees) => ((ph in (inf.posts)) || (ph in Ad)))
})
})
})
}





