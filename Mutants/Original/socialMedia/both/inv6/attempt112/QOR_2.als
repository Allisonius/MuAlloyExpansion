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
(no d: (one Day),p: (one Photo) {
(((p->d) in date) => (all i: (one Influencer) {
((i->p) in posts)
}))
})
}





