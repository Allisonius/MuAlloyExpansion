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
(lone i: (one Influencer) {
(all x,y: (one ((i.posts) - Ad)) {
((x.date) = ((y.date) + 1))
})
})
}





