# Alist on Fly.io

## 状态

[![Fly Deploy cd](https://github.com/Originat/alist-fly.io/actions/workflows/main.yml/badge.svg)](https://github.com/Originat/alist-flyio/actions/workflows/main.yml)

## 概述

在 [Fly.io](https://fly.io) 部署 [Alist](https://github.com/Xhofe/alist) 特点：彻底摆脱ban权限zhi（荷兰🇳🇱，阿姆斯特丹），自带cdn，本项目已设置数据库类型为`sqlite3`，优化在项目不删除的情况下重新部署时，保留之前的数据。

## 如何部署

1. 先到 [Fly.io](https://fly.io/) 注册账号，***注意：注册时要记得绑定信用卡，银联的就行***
2. 创建 fly 应用程序（app）：`fly launch`  （选择 ams (Amsterdam,Netherlands)）
3. 创建 fly 卷（volume）：`flyctl volumes create data --region ams --size 1`

4. Fork 此项目后，在 Settings -> Secrets -> Actions 中增加 `FLY_API_TOKEN`、`APP_NAME` 安全字段

* FLY_API_TOKEN - Fly API 接口 Token 值，可访问 <https://web.fly.io/user/personal_access_tokens> 或在本地执行 `flyctl auth token` 查看
* APP_NAME - 应用名称，注意此名称全局唯一

推送代码即可触发部署，已设置每月十八号八点（UTC）自动部署

## F&Q

账号密码？  
在Log中查看
