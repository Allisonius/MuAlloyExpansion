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
pred inv6[] {
(no u: (one User) {
(all d: (one Day) {
(all p: (one Photo) {
((u in Influencer) => (((u->p) in posts) && ((p->d) in date)))
})
})
})
}





