#!/bin/bash

hint(){
echo -e "\033[0;32m Automatic packing successful \\033[0m" || echo -e "\033[0;31m Automatic packing failed \\033[0m"
}
#--------------------------------------------------------------------------------------------------------------
#测试
#--------------------------------------------------------------------------------------------------------------
c_test(){
#glmember
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/给乐生活APP/测试/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/给乐生活APP/测试/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/debug
svn_dir=/home/opadmin/svn_repos/客户端
#svn_project_dir=/home/opadmin/svn_repos/客户端/给乐生活APP/测试/Android/v6.2/V6.2.1
svn_project_dir=/home/opadmin/svn_repos/客户端/给乐生活APP/测试/Android/$d1/$d2/
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空www文件和apk
rm -rf /home/opadmin/android/git_repo/android/glmember/www
cp -r /home/opadmin/android/git_repo/www/c_www /home/opadmin/android/git_repo/android/glmember/www
rm -rf /home/opadmin/android/apk/debug/*
#编译打包
cd /home/opadmin/android/git_repo/android/glmember && ionic build android
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/给乐生活APP/测试/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test glmember"
}



b_test(){
#glBusiness
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/商户APP/测试/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/商户APP/测试/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/debug
svn_dir=/home/opadmin/svn_repos/客户端
#svn_project_dir=/home/opadmin/svn_repos/客户端/商户APP/测试/Android/v6.2/V6.2.1
svn_project_dir=/home/opadmin/svn_repos/客户端/商户APP/测试/Android/$d1/$d2
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空www文件和apk
rm -rf /home/opadmin/android/git_repo/android/glmember/www
cp -r /home/opadmin/android/git_repo/www/b_www /home/opadmin/android/git_repo/android/glBusiness/www
rm -rf /home/opadmin/android/apk/debug/*
#编译打包
cd /home/opadmin/android/git_repo/android/glBusiness && ionic build android
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/商户APP/测试/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test glBusiness"
}



s_test(){
#glsale
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/渠道APP/测试/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/渠道APP/测试/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/debug
svn_dir=/home/opadmin/svn_repos/客户端
#svn_project_dir=/home/opadmin/svn_repos/客户端/渠道APP/测试/Android/v6.2/V6.2.1
svn_project_dir=/home/opadmin/svn_repos/客户端/渠道APP/测试/Android/$d1/$d2
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空www文件和apk
rm -rf /home/opadmin/android/git_repo/android/glsale/www
cp -r /home/opadmin/android/git_repo/www/s_www /home/opadmin/android/git_repo/android/glsale/www
rm -rf /home/opadmin/android/apk/debug/*
#编译打包
cd /home/opadmin/android/git_repo/android/glsale && ionic build android
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/渠道APP/测试/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test glsale"
}



m_test(){
#market
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/给乐网络/测试/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/给乐网络/测试/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/debug
svn_dir=/home/opadmin/svn_repos/客户端
#svn_project_dir=/home/opadmin/svn_repos/客户端/给乐网络/测试/Android/v6.2/V6.2.1
svn_project_dir=/home/opadmin/svn_repos/客户端/给乐网络/测试/Android/$d1/$d2
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空www文件和apk
rm -rf /home/opadmin/android/git_repo/android/market/www
cp -r /home/opadmin/android/git_repo/www/glMarket_App_www /home/opadmin/android/git_repo/android/market/www
rm -rf /home/opadmin/android/apk/debug/*
#编译打包
cd /home/opadmin/android/git_repo/android/market && ionic build android
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/给乐网络/测试/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test market"
}



i_test(){
#icity
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/智慧城市/测试/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/智慧城市/测试/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/debug
svn_dir=/home/opadmin/svn_repos/客户端
#svn_project_dir=/home/opadmin/svn_repos/客户端/智慧城市/测试/Android/v6.2/V6.2.1
svn_project_dir=/home/opadmin/svn_repos/客户端/智慧城市/测试/Android/$d1/$d2
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空www文件和apk
rm -rf /home/opadmin/android/git_repo/android/icity/www
cp -r /home/opadmin/android/git_repo/www/smartCity_www /home/opadmin/android/git_repo/android/icity/www
rm -rf /home/opadmin/android/apk/debug/*
#编译打包
cd /home/opadmin/android/git_repo/android/icity && ionic build android
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/智慧城市/测试/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test icity"
}

#--------------------------------------------------------------------------------------------------------------
#测试生产
#--------------------------------------------------------------------------------------------------------------
c_testp(){
#glmember
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/给乐生活APP/生产/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/给乐生活APP/生产/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/test_pro
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/给乐生活APP/生产/Android/$d1/$d2
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/glmember/www
cp -r /home/opadmin/android/git_repo/www/c_www_pro /home/opadmin/android/git_repo/android/glmember/www
rm -rf /home/opadmin/android/apk/release/*.apk
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar beta /home/opadmin/android/git_repo/android/glmember/config.xml
cd /home/opadmin/android/git_repo/android/glmember && cordova-hcp build && ionic build android --release
java -jar /home/opadmin/android/config_jar/handle-release.jar /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/test_pro/
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/给乐生活APP/生产/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test_pro glmember"
}



b_testp(){
#glBusiness
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/商户APP/生产/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/商户APP/生产/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/test_pro
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/商户APP/生产/Android/$d1/$d2
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/glBusiness/www
cp -r /home/opadmin/android/git_repo/www/b_www_pro /home/opadmin/android/git_repo/android/glBusiness/www
rm -rf /home/opadmin/android/apk/release/*.apk
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar beta /home/opadmin/android/git_repo/android/glBusiness/config.xml
cd /home/opadmin/android/git_repo/android/glBusiness && cordova-hcp build && ionic build android --release
java -jar /home/opadmin/android/config_jar/handle-release.jar /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/test_pro/
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/商户APP/生产/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test_pro glBusiness"
}



s_testp(){
#glsale
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/渠道APP/生产/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/渠道APP/生产/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/test_pro
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/渠道APP/生产/Android/$d1/$d2
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/glsale/www
cp -r /home/opadmin/android/git_repo/www/s_www_pro /home/opadmin/android/git_repo/android/glsale/www
rm -rf /home/opadmin/android/apk/release/*.apk
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar beta /home/opadmin/android/git_repo/android/glsale/config.xml
cd /home/opadmin/android/git_repo/android/glsale && cordova-hcp build && ionic build android --release
java -jar /home/opadmin/android/config_jar/handle-release.jar /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/test_pro/
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/渠道APP/生产/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test_pro glsale"
}



m_testp(){
#market
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/给乐网络/生产/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/给乐网络/生产/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/test_pro
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/给乐网络/生产/Android/$d1/$d2
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/market/www
cp -r /home/opadmin/android/git_repo/www/glMarket_App_www_pro /home/opadmin/android/git_repo/android/market/www
rm -rf /home/opadmin/android/apk/release/*.apk
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar beta /home/opadmin/android/git_repo/android/market/config.xml
cd /home/opadmin/android/git_repo/android/market && cordova-hcp build && ionic build android --release
java -jar /home/opadmin/android/config_jar/handle-release.jar /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/test_pro/
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/给乐网络/生产/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test_pro market"
}



i_testp(){
#icity
#更新android、www项目代码
d1=$(ls /home/opadmin/svn_repos/客户端/智慧城市/生产/Android/ | sort -r | head -1)
d2=$(ls /home/opadmin/svn_repos/客户端/智慧城市/生产/Android/$d1/ | sort -r | head -1)
apk_dir=/home/opadmin/android/apk/test_pro
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/智慧城市/生产/Android/$d1/$d2
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/icity/www
cp -r /home/opadmin/android/git_repo/www/smartCity_www_pro /home/opadmin/android/git_repo/android/icity/www
rm -rf /home/opadmin/android/apk/release/*.apk
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar beta /home/opadmin/android/git_repo/android/icity/config.xml
cd /home/opadmin/android/git_repo/android/icity && cordova-hcp build && ionic build android --release
java -jar /home/opadmin/android/config_jar/handle-release.jar /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/test_pro/
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/智慧城市/生产/Android/
cd $svn_dir && svn update .
mv $apk_dir/* $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging test_pro icity"
}

#--------------------------------------------------------------------------------------------------------------
#生产
#--------------------------------------------------------------------------------------------------------------
c_prod(){
#更新android、www项目代码
project_fullname=glmember
project=c
project_h5=c
project_cn="给乐生活APP"
apk_dir=/home/opadmin/android/apk/jiagu/${project}
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/${project_cn}/正式发布/Android
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/${project_fullname}/www
cp -r /home/opadmin/android/git_repo/www/${project_h5}_www_pro /home/opadmin/android/git_repo/android/${project_fullname}/www
rm -rf /home/opadmin/android/apk/release/*.apk && rm -rf /home/opadmin/android/apk/jiagu/${project}/*
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar pro /home/opadmin/android/git_repo/android/${project_fullname}/config.xml
cd /home/opadmin/android/git_repo/android/${project_fullname} && cordova-hcp build && ionic build android --release
#生成hotpath
cp -r /home/opadmin/android/git_repo/android/${project_fullname}/www /home/opadmin/android/apk/jiagu/${project}/hotpath
#APP加固
cd /home/opadmin/android/360jiagubao_1535_linux_64/jiagu
#java -jar jiagu.jar -login liudong_wust liudong91
#java -jar jiagu.jar -login liu13632889845 Liu13632889845
java -jar jiagu.jar -login service@365gl.com !1QAZ@2wsx
java -jar jiagu.jar -importsign /home/opadmin/android/keystore.jks 365gl.com 365gl 365gl.com
java -jar jiagu.jar -importmulpkg /home/opadmin/android/Multichann_template2.txt
java -jar jiagu.jar -jiagu /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/jiagu/${project}/ -autosign -automulpkg
#生成生产json配置文件
java -jar /home/opadmin/android/config_jar/createJson.jar /home/opadmin/android/apk/jiagu/${project}/*1_geile_sign.apk /home/opadmin/android/apk/jiagu/${project}/ /home/opadmin/android/config_jar/description.json /home/opadmin/android/config_jar/force.json /home/opadmin/android/config_jar/isForce.json
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/${project_cn}/正式发布/Android/
cd $svn_dir && svn update .
cd $apk_dir && cp `ls *1_geile_sign.apk` $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging prod ${project_fullname}"
}

#move渠道包

#上传到apk到oss

#上传json文件服务器



b_prod(){
#更新android、www项目代码
project_fullname=glBusiness
project=b
project_h5=b
project_cn="商户APP"
apk_dir=/home/opadmin/android/apk/jiagu/${project}
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/${project_cn}/正式发布/Android
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/${project_fullname}/www
cp -r /home/opadmin/android/git_repo/www/${project_h5}_www_pro /home/opadmin/android/git_repo/android/${project_fullname}/www
rm -rf /home/opadmin/android/apk/release/*.apk && rm -rf /home/opadmin/android/apk/jiagu/${project}/*
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar pro /home/opadmin/android/git_repo/android/${project_fullname}/config.xml
cd /home/opadmin/android/git_repo/android/${project_fullname} && cordova-hcp build && ionic build android --release
#生成hotpath
cp -r /home/opadmin/android/git_repo/android/${project_fullname}/www /home/opadmin/android/apk/jiagu/${project}/hotpath
#APP加固
cd /home/opadmin/android/360jiagubao_1535_linux_64/jiagu
#java -jar jiagu.jar -login liudong_wust liudong91
java -jar jiagu.jar -login liu13632889845 Liu13632889845
java -jar jiagu.jar -importsign /home/opadmin/android/keystore.jks 365gl.com 365gl 365gl.com
java -jar jiagu.jar -importmulpkg /home/opadmin/android/Multichann_template2.txt
java -jar jiagu.jar -jiagu /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/jiagu/${project}/ -autosign -automulpkg
#生成生产json配置文件
java -jar /home/opadmin/android/config_jar/createJson.jar /home/opadmin/android/apk/jiagu/${project}/*1_geile_sign.apk /home/opadmin/android/apk/jiagu/${project}/ /home/opadmin/android/config_jar/description.json /home/opadmin/android/config_jar/force.json /home/opadmin/android/config_jar/isForce.json
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/${project_cn}/正式发布/Android/
cd $svn_dir && svn update .
cd $apk_dir && cp `ls *1_geile_sign.apk` $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging prod ${project_fullname}"
}

#move渠道包

#上传到apk到oss

#上传json文件服务器



s_prod(){
#更新android、www项目代码
project_fullname=glsale
project=s
project_h5=s
project_cn="渠道APP"
apk_dir=/home/opadmin/android/apk/jiagu/${project}
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/${project_cn}/正式发布/Android
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/${project_fullname}/www
cp -r /home/opadmin/android/git_repo/www/${project_h5}_www_pro /home/opadmin/android/git_repo/android/${project_fullname}/www
rm -rf /home/opadmin/android/apk/release/*.apk && rm -rf /home/opadmin/android/apk/jiagu/${project}/*
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar pro /home/opadmin/android/git_repo/android/${project_fullname}/config.xml
cd /home/opadmin/android/git_repo/android/${project_fullname} && cordova-hcp build && ionic build android --release
#生成hotpath
cp -r /home/opadmin/android/git_repo/android/${project_fullname}/www /home/opadmin/android/apk/jiagu/${project}/hotpath
#APP加固
cd /home/opadmin/android/360jiagubao_1535_linux_64/jiagu
#java -jar jiagu.jar -login liudong_wust liudong91
java -jar jiagu.jar -login liu13632889845 Liu13632889845
#java -jar jiagu.jar -login service@365gl.com !1QAZ@2wsx
java -jar jiagu.jar -importsign /home/opadmin/android/keystore.jks 365gl.com 365gl 365gl.com
java -jar jiagu.jar -importmulpkg /home/opadmin/android/Multichann_template2.txt
java -jar jiagu.jar -jiagu /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/jiagu/${project}/ -autosign -automulpkg
#生成生产json配置文件
java -jar /home/opadmin/android/config_jar/createJson.jar /home/opadmin/android/apk/jiagu/${project}/*1_geile_sign.apk /home/opadmin/android/apk/jiagu/${project}/ /home/opadmin/android/config_jar/description.json /home/opadmin/android/config_jar/force.json /home/opadmin/android/config_jar/isForce.json
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/${project_cn}/正式发布/Android/
cd $svn_dir && svn update .
cd $apk_dir && cp `ls *1_geile_sign.apk` $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging prod ${project_fullname}"
}

#move渠道包

#上传到apk到oss

#上传json文件服务器



m_prod(){
#更新android、www项目代码
project_fullname=market
project=m
project_h5=glMarket
project_cn="给乐网络"
apk_dir=/home/opadmin/android/apk/jiagu/${project}
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/${project_cn}/正式发布/Android
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/${project_fullname}/www
cp -r /home/opadmin/android/git_repo/www/${project_h5}_www_pro /home/opadmin/android/git_repo/android/${project_fullname}/www
rm -rf /home/opadmin/android/apk/release/*.apk && rm -rf /home/opadmin/android/apk/jiagu/${project}/*
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar pro /home/opadmin/android/git_repo/android/${project_fullname}/config.xml
cd /home/opadmin/android/git_repo/android/${project_fullname} && cordova-hcp build && ionic build android --release
#生成hotpath
cp -r /home/opadmin/android/git_repo/android/${project_fullname}/www /home/opadmin/android/apk/jiagu/${project}/hotpath
#APP加固
cd /home/opadmin/android/360jiagubao_1535_linux_64/jiagu
#java -jar jiagu.jar -login liudong_wust liudong91
java -jar jiagu.jar -login liu13632889845 Liu13632889845
java -jar jiagu.jar -importsign /home/opadmin/android/keystore.jks 365gl.com 365gl 365gl.com
java -jar jiagu.jar -importmulpkg /home/opadmin/android/Multichann_template2.txt
java -jar jiagu.jar -jiagu /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/jiagu/${project}/ -autosign -automulpkg
#生成生产json配置文件
java -jar /home/opadmin/android/config_jar/createJson.jar /home/opadmin/android/apk/jiagu/${project}/*1_geile_sign.apk /home/opadmin/android/apk/jiagu/${project}/ /home/opadmin/android/config_jar/description.json /home/opadmin/android/config_jar/force.json /home/opadmin/android/config_jar/isForce.json
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/${project_cn}/正式发布/Android/
cd $svn_dir && svn update .
cd $apk_dir && cp `ls *1_geile_sign.apk` $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging prod ${project_fullname}"
}

#move渠道包

#上传到apk到oss

#上传json文件服务器



i_prod(){
#更新android、www项目代码
project_fullname=icity
project=i
project_h5=smartCity
project_cn="智慧城市"
apk_dir=/home/opadmin/android/apk/jiagu/${project}
svn_dir=/home/opadmin/svn_repos/客户端
svn_project_dir=/home/opadmin/svn_repos/客户端/${project_cn}/正式发布/Android
cd /home/opadmin/android/git_repo/android && git pull
cd /home/opadmin/android/git_repo/www && git pull
#清空项目中的www文件
rm -rf /home/opadmin/android/git_repo/android/${project_fullname}/www
cp -r /home/opadmin/android/git_repo/www/${project_h5}_www_pro /home/opadmin/android/git_repo/android/${project_fullname}/www
rm -rf /home/opadmin/android/apk/release/*.apk && rm -rf /home/opadmin/android/apk/jiagu/${project}/*
#热更新、编译打包
java -jar /home/opadmin/android/config_jar/configHot.jar pro /home/opadmin/android/git_repo/android/${project_fullname}/config.xml
cd /home/opadmin/android/git_repo/android/${project_fullname} && cordova-hcp build && ionic build android --release
#生成hotpath
cp -r /home/opadmin/android/git_repo/android/${project_fullname}/www /home/opadmin/android/apk/jiagu/${project}/hotpath
#APP加固
cd /home/opadmin/android/360jiagubao_1535_linux_64/jiagu
#java -jar jiagu.jar -login liudong_wust liudong91
java -jar jiagu.jar -login liu13632889845 Liu13632889845
java -jar jiagu.jar -importsign /home/opadmin/android/keystore.jks 365gl.com 365gl 365gl.com
java -jar jiagu.jar -importmulpkg /home/opadmin/android/Multichann_template2.txt
java -jar jiagu.jar -jiagu /home/opadmin/android/apk/release/*.apk /home/opadmin/android/apk/jiagu/${project}/ -autosign -automulpkg
#生成生产json配置文件
java -jar /home/opadmin/android/config_jar/createJson.jar /home/opadmin/android/apk/jiagu/${project}/*1_geile_sign.apk /home/opadmin/android/apk/jiagu/${project}/ /home/opadmin/android/config_jar/description.json /home/opadmin/android/config_jar/force.json /home/opadmin/android/config_jar/isForce.json
#上传到SVN
#svn主路径  http://glsvn.365gl.com/document/2017/04-testing/07-安装包/客户端/${project_cn}/正式发布/Android/
cd $svn_dir && svn update .
cd $apk_dir && cp `ls *1_geile_sign.apk` $svn_project_dir
cd $svn_project_dir && svn add `ls -t | head -1`
svn commit -m "android auto packaging prod ${project_fullname}"
}

#move渠道包

#上传到apk到oss

#上传json文件服务器

#--------------------------------------------------------------------------------------------------------------

case $1 in
  "c_test" )
  c_test && hint
  ;;
  "b_test" )
  b_test && hint
  ;;
  "s_test" )
  s_test && hint
  ;;
  "m_test" )
  m_test && hint
  ;;
  "i_test" )
  i_test && hint
  ;;
  "all_test" )
  c_test && hint && b_test && hint && s_test && hint && m_test && hint && i_test && hint 
  ;;
  "c_testp" )
  c_testp && hint
  ;;
  "b_testp" )
  b_testp && hint
  ;;
  "s_testp" )
  s_testp && hint
  ;;
  "m_testp" )
  m_testp && hint
  ;;
  "i_testp" )
  i_testp && hint
  ;;
  "all_testp" )
  c_testp && hint && b_testp && hint && s_testp && hint && m_testp && hint && i_testp && hint 
  ;;
  "c_prod" )
  c_prod && hint
  ;;
  "b_prod" )
  b_prod && hint
  ;;
  "s_prod" )
  s_prod && hint
  ;;
  "m_prod" )
  m_prod && hint
  ;;
  "i_prod" )
  i_prod && hint
  ;;
  "all_prod" )
  c_prod && hint && b_prod && hint && s_prod && hint && m_prod && hint && i_prod && hint 
  ;;
  "" )
  echo -e "\033[0;35m You must provide the project name, such as $0 c_test|c_testp|c_prod  \\033[0m"
  ;;
esac
