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
(all u: (one User) {
(all d: (one Day) {
(one p: (one Photo) {
((Influencer in u) => (((u->p) in posts) && ((p->d) in date)))
})
})
})
}





