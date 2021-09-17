Import-Module oh-my-posh
Set-PoshPrompt -Theme marcduiker

function vi          { nvim $args }

# git Alias
  # git abbreviations
function g          { git }
function ga         { git add }
function gaa        { git add --all }
function gapa       { git add --patch }
function gap        { git apply }
function gb         { git branch -vv }
function gba        { git branch -a -v }
function gban       { git branch -a -v --no-merged }
function gbd        { git branch -d }
function gbD        { git branch -D }
function gbl        { git blame -b -w }
function gbs        { git bisect }
function gbsb       { git bisect bad }
function gbsg       { git bisect good }
function gbsr       { git bisect reset }
function gbss       { git bisect start }
function gc         { git commit -v }
function gc!        { git commit -v --amend }
function gcn!       { git commit -v --no-edit --amend }
function gca        { git commit -v -a }
function gca!       { git commit -v -a --amend }
function gcan!      { git commit -v -a --no-edit --amend }
function gcv        { git commit -v --no-verify }
function gcav       { git commit -a -v --no-verify }
function gcav!      { git commit -a -v --no-verify --amend }
function gcm        { git commit -m }
function gcam       { git commit -a -m }
function gscam      { git commit -S -a -m }
function gcfx       { git commit --fixup }
function gcf        { git config --list }
function gcl        { git clone }
function gclean     { git clean -di }
function gclean!    { git clean -dfx }
function gclean!!   { "git reset --hard; and git clean -dfx" }
function gcount     { git shortlog -sn }
function gcp        { git cherry-pick }
function gcpa       { git cherry-pick --abort }
function gcpc       { git cherry-pick --continue }
function gd         { git diff }
function gdca       { git diff --cached }
function gds        { git diff --stat }
function gdsc       { git diff --stat --cached }
function gdw        { git diff --word-diff }
function gdwc       { git diff --word-diff --cached }
function gdto       { git difftool }
function gignore    { git update-index --assume-unchanged }
function gf         { git fetch }
function gfa        { git fetch --all --prune }
function gfm        { "git fetch origin (__git.default_branch) --prune; and git merge FETCH_HEAD" }
function gfo        { git fetch origin }
function gl         { git pull }
function gll        { git pull origin }
function glr        { git pull --rebase }
function glg        { git log --stat --max-count=10 }
function glgg       { git log --graph --max-count=10 }
function glgga      { git log --graph --decorate --all }
function glo        { git log --oneline --decorate --color }
function glog       { git log --oneline --decorate --color --graph }
function glom       { git log --oneline --decorate --color \(__git.default_branch\).. }
function glod       { git log --oneline --decorate --color develop.. }
function gloo       { "git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short" }
function gm         { git merge }
function gmt        { git mergetool --no-prompt }
function gp         { git push }
function gp!        { git push --force-with-lease }
function gpo        { git push origin }
function gpo!       { git push --force-with-lease origin }
function gpv        { git push --no-verify }
function gpv!       { git push --no-verify --force-with-lease }
function ggp!       { ggp --force-with-lease }
function gpu        { ggp --set-upstream }
function gr         { git remote -vv }
function gra        { git remote add }
function grb        { git rebase }
function grba       { git rebase --abort }
function grbc       { git rebase --continue }
function grbi       { git rebase --interactive }
function grbm       { git rebase \(__git.default_branch\) }
function grbmi      { git rebase \(__git.default_branch\) --interactive }
function grbmia     { git rebase \(__git.default_branch\) --interactive --autosquash }
function grbd       { git rebase develop }
function grbdi      { git rebase \(__git.default_branch\) --interactive }
function grbdia     { git rebase \(__git.default_branch\) --interactive --autosquash }
function grbs       { git rebase --skip }
function grev       { git revert }
function grh        { git reset }
function grhh       { git reset --hard }
function grhpa      { git reset --patch }
function grm        { git rm }
function grmc       { git rm --cached }
function grmv       { git remote rename }
function grrm       { git remote remove }
function grs        { git restore }
function grset      { git remote set-url }
function grss       { git restore --source }
function grup       { git remote update }
function grv        { git remote -v }
function gsh        { git show }
function gsd        { git svn dcommit }
function gsr        { git svn rebase }
function gss        { git status -s }
function gst        { git status }
function gsta       { git stash }
function gstd       { git stash drop }
function gstp       { git stash pop }
function gsts       { git stash show --text }
function gsu        { git submodule update }
function gsur       { git submodule update --recursive }
function gsuri      { git submodule update --recursive --init }
function gts        { git tag -s }
function gtv        { git tag | sort -V }
function gsw        { git switch }
function gswc       { git switch --create }
function gunignore  { git update-index --no-assume-unchanged }
function gup        { git pull --rebase }
function gwch       { git whatchanged -p --abbrev-commit --pretty=medium }

  # git checkout abbreviations
function gco        { git checkout }
function gcb        { git checkout -b }
function gcod       { git checkout develop }
function gcom       { git checkout \(__git.default_branch\) }

  # git flow abbreviations
function gfb        { git flow bugfix }
function gff        { git flow feature }
function gfr        { git flow release }
function gfh        { git flow hotfix }
function gfs        { git flow support }

function gfbs       { git flow bugfix start }
function gffs       { git flow feature start }
function gfrs       { git flow release start }
function gfhs       { git flow hotfix start }
function gfss       { git flow support start }

function gfbt       { git flow bugfix track }
function gfft       { git flow feature track }
function gfrt       { git flow release track }
function gfht       { git flow hotfix track }
function gfst       { git flow support track }

function gfp        { git flow publish }
