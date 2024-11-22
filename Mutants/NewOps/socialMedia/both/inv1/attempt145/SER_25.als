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
pred inv1[] {
(lone p: (one Photo) {
(lone u: (one Ad),i: (one Influencer) {
((p in (u.posts)) || (p in (i.posts)))
})
})
}





