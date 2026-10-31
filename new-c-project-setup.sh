#! /usr/bin/env bash
# fname: new-c-project-setup.sh
# descpt: new c project folder and files setup
# 20261031 v1
# last: 20261031
# ---


if [ $# -eq 1 ]; then
	project_name=$1
else
	project_name="defaultprojectname-rename-me_$(date +%Y%m%d)"
fi

project_path="./${project_name}"


if [ -d ${project_path} ]; then
	printf "[e] ${project_path} exists!\n\n"
	exit 1
fi

printf "[i] creating new project: ${project_name}\n"
mkdir -vp ${project_path}/{src,lib,include,tests,build,build}

cat <<'EOF' > "${project_path}/Makefile"
#for win
#CC=/c/Users/gregor.redelonghi/majstaf/majprogs/mingw./build/x86_64-w64-mingw32-gcc-11.1.0.exe
CC = gcc
CFLAGS = -g -Wall
RM = rm -v
BUILD = ./build
SRC = ./src

SRCS = $(wildcard $(SRC)/*.c)
# PROGS = $(patsubst %.c,%,$(SRCS))
PROGS = $(SRCS:$(SRC)/%.c=%)

all: newbuilddir $(PROGS)

newbuilddir:
	@mkdir -p ./build

%: $(SRC)/%.c $(SRC)/*.h
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $<

%: $(SRC)/%.c
	$(CC) $(CFLAGS) -o $(BUILD)/$@ $<

clean:
	$(RM) $(BUILD)/*

EOF

cat <<'EOF2' > ${project_path}/src/main.c
#include <stdio.h>
#include <string.h>

int main(void) {
	printf("I'm ALIVE!!\n");

	return 0;
}

EOF2

tree ${project_path}

