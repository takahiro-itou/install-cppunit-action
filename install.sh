#!/bin/bash  -xue

install_prefix=$1
install_version=$2

if [[ "X${install_prefix}Y" == 'no' ]] ; then
    # インストールしない
    exit  0
fi

if [[ -f "${install_prefix}/lib/libcppunit.a" ]] ; then
    echo "Already installed : ${install_prefix}"
    exit  0
fi

package_name="cppunit-${install_version}"
package_file="${package_name}.tar.gz"

download_url='https://dev-www.libreoffice.org/src'
download_url+="/${package_file}"

wget --no-check-certificate "${download_url}"
tar -xzf "${package_file}"
pushd "${package_name}"

./configure  --prefix="${install_prefix}"   \
    --disable-shared  --enable-static       \
    &&  make  &&  make  install

popd
