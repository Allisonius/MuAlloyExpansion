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
((((Photo - Ad) in (((User)).sees)) => ((((User)).follows) in (posts.(Photo - Ad)))) && (all a: (one Ad) {
(some (sees.a))
}))
}





