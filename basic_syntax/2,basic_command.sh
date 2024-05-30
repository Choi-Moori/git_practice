# 현재 working directory, staging area 만 상태 확인
git status

# git add : 모든 수정/추가사항 add
git add .

# git add 특정파일 : 특정 파일 add
git add 특정파일(위치포함 tab 키)

# local repository 에 반영 및 커밋이력 생성
git commit -m "메시지타이틀" -m "메시지내용"

# vi 모드에서 작성 - git commit 후 엔터
git commit 

# commit 이력 확인
git log 

# git log 간결하게
git log --oneline
# 전체 이력 조회
git log --all


# 충돌무시하고 강제 push
# 1. 충돌 발생 -> 원격의 내용은 뭔지 pull 받아오고 -> 내것 비교해서 충돌해결 -> merge
# 2. 충돌 발생 -> 로컬 기준으로 강제 push -> git push --force
git push origin maser --force
# 로그를 그래프 형태로 조회
git log --graph

# 원격저장소로 업로드
git push origin 브랜치명

# 특정 commit ID로의 전환
git checkout 커밋id

# 다시 현재의 master(브랜치)의 commit로 return
git check master

# git pull은 원격의 변경사항을 local로 다운로드
git pull origin 브랜치명

# git 작업 취소
# working directory에서의 수정사항만 취소
git checkout .   
# working directory에서 추가파일 취소
git clean --dfx
# 수정취소 동시에
git checkout . | git clean --fdx
# staging area에서의 취소
git reset
# commit 이후의 취소
git reset HEAD~1
# push 이후의 취소
git revert 커밋ID


# 버전별 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경이 있는지를 비교
git diff A B
git diff commitId1 CommitId2
git diff A브랜치 B브랜치

# 원격에 변경을 가해서 commit
git fetch origin master
git log
git log --all