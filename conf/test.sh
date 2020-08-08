#!/bin/bash
git filter-branch -f --env-filter "
if [ ${GIT_AUTHOR_NAME}='t.furuse' ]; then
  export GIT_AUTHOR_NAME='tsuperis'
  export GIT_AUTHOR_EMAIL='tsuperis@gmail.com'
  export GIT_COMMITTER_NAME='tsuperis'
  export GIT_COMMITTER_EMAIL='tsuperis@gmail.com'
fi
"
