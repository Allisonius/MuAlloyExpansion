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
((((((Photo)) != ((Ad))) && (((User)) in (sees.((Photo)))) && (((User)) in (posts.((Photo))))) => (((User)) in (follows.((User))))) && (all a: (one Ad),u: (one User) {
(u in (sees.a))
}))
}





