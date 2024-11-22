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
(all d: (one Photo) {
(one p: (one Photo) {
((u in Influencer) => (((u->p) in posts) && ((p->d) in date)))
})
})
})
}





