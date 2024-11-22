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
(all x,y: (User - Influencer),f: (one Photo) {
((y in (follows.x)) => ((f in (posts.y)) && (f in (sees.x))))
})
}





