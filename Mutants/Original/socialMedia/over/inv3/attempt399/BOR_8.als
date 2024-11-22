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
(all user: (one univ) {
((user != User) && (all photo: (one univ) {
((((user->photo) in posts) => (photo in Ad)) || (some follower: (one univ) {
(((follower->photo) in posts) && ((user->follower) in follows))
}))
}))
})
}





