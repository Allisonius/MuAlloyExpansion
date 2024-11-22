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
pred inv5[] {
(all u: (one (User - Influencer)) {
(lone i,y: (one Influencer) {
((i != y) => ((i in (follows.y)) && (u in (follows.y))))
})
})
}





