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
((((((Photo)) != ((Ad))) && (((User)) in (posts.((Photo)))) && (((User)) in (sees.((Photo))))) => (((User)) in (follows.((User))))) && (all u: (one User),p: (one Photo) {
((u in (sees.p)) && (p in Ad))
}))
}





