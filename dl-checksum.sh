#!/usr/bin/env sh
APP=terraform
DIR=~/Downloads
MIRROR=https://releases.hashicorp.com/${APP}

dl()
{
    local ver=$1
    local lchecksums=$2
    local os=$3
    local arch=$4
    local platform=${os}_${arch}
    local file=${APP}_${ver}_${platform}.zip
    local url=$MIRROR/$ver/$file

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform `fgrep $file $lchecksums | awk '{print $1}'`
}

dl_all () {
    local ver=$1
    local checksums=${APP}_${ver}_SHA256SUMS
    local lchecksums=$DIR/$checksums
    local rchecksums=$MIRROR/$ver/$checksums

    if [ ! -e $lchecksums ];
    then
        wget -q -O $lchecksums $rchecksums
    fi

    printf "  # %s\n" $rchecksums
    printf "  '%s':\n" $ver
    dl $ver $lchecksums darwin amd64
    dl $ver $lchecksums freebsd 386
    dl $ver $lchecksums freebsd amd64
    dl $ver $lchecksums freebsd arm
    dl $ver $lchecksums linux 386
    dl $ver $lchecksums linux amd64
    dl $ver $lchecksums linux arm
    dl $ver $lchecksums openbsd 386
    dl $ver $lchecksums openbsd amd64
    dl $ver $lchecksums solaris amd64
    dl $ver $lchecksums windows 386
    dl $ver $lchecksums windows amd64
}

dl_all  ${1:-1.1.3}
