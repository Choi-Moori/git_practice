# git 프로젝트 생성방법 2가지
# 방법1. 원격 repo 생성 후 clone

# 방법2. 로컬에서부터 이미 개발된 프로젝트가 존재시에 github 업로드
# 해당 프로젝트 경로에 .git 폴더 생성
git init

# 원격지 주소를 생성 및 추가
# 원격지 주소 추가
git remote add origin 레포주소

# 만약 local에서 작성하고 git 에 init을 할 시 초기 branch 는 master 이다.
# github에서 만들면 main, 로컬에서 만들어서 init 할 시 master
git add .
git commit -m "fix"
git push origin master

# 원격지 주소 삭제
git remote remove origin
# 원격주소 변경
git remote set-url origin 레포주소

# git 설정정보 조회
git config --list

# git add .은 모든 변경사항을 staging area로 이동
git add .

# git commit 은 staging area의 변경사항을 확정짓고 commitID 생성
git commit -m ""

# 원격 repo에 upload
git push origin branch명

# github 인증방법 2가지
# 1.token인증 방식


# 2.제3자인증(oauth) 방식()


##########################################
# 레포 kimseonguk197 깃 주소에서 아무거나 repo로 가져가기
# 타인 레포 clone 방법 2가지
# 1) commit이력 유지한채 가져가기 
#별도의 add, commit 필요 없이 바로 push 가능
ex) git clone 타인레포주소
ex) git remote set-url origin 내레포주소
ex) git push origin master
# 2) commit ID 전부 없애고 내 레포 인것처럼 가져가기
git clone 타인레포주소
ex) 폴더에 들어가 .git 파일 삭제
ex) 폴더에 들어가기.
git init
git remote add origin 내레포주소
git add .
git commit -m "msg"
git push origin master

# 사용자 지정 방법
# 전역적 사용자(이름, email) 지정
git config --global user.name "Choi-Moori"
git config --global user.email "이메일"

# 지역적 사용자(이름, email) 지정