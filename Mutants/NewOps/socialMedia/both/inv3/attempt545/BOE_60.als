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
(all user1,user2: (one User) {
(all p: (one (Photo - Ad)) {
(((p in (user1.sees)) && (p in (user2.posts))) => ((user1.follows) in user2))
})
})
}





