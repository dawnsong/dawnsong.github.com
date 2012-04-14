#!/bin/bash - 
#===============================================================================
#
#          FILE:  gen_add_ci_push.sh
# 
#         USAGE:  ./gen_add_ci_push.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: dawnsong (Xiao-Wei Song), dawnsong@moon.ibp.ac.cn
#       COMPANY: Institute of Biophysics, Chinese Academy of Science
#       CREATED: 04/14/2012 07:11:12 PM CST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

elog(){ echo "$@" 1>&2 ; }

#if [ $# -eq 0 ]; then
#  elog "Usage: $0 " 
#  exit 1
#fi 

cd $(dirname `readlink -f $0`)

#rake generate
jekyll
git add .
git commit -a -m 'update'
git push heroku master
git push github master
