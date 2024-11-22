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
(no disj d1,d2: (one Day),i: (one Influencer) {
((d1 in ((i.posts).date)) && (d2 in (i.date)))
})
}





