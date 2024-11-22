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
(all user: (one User) {
(all follow: (one (user.follows)) {
(((Photo - Ad) in (user.sees)) => ((Photo - Ad) in (follow.posts)))
})
})
}





