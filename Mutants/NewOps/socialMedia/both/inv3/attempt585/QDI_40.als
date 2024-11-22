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
(all photo: (one (Photo - Ad)) {
(all user: (one User) {
(all follow: (User & Influencer) {
((photo in (user.sees)) => (photo in (follow.posts)))
})
})
})
}





