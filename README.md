<div align="center">

# bitbots_msgs

<img src="log.jpg" alt="BigHeroX Logo" width="280"/>

### RoboCup HSL 2026 · ROS2 模块间接口定义包

**湖南大学 Robot 工坊 · BigHeroX 超能麓团队**

[![ROS2](https://img.shields.io/badge/ROS2-Humble%20Hawksbill-blue.svg)](https://docs.ros.org/en/humble/)
[![DDS](https://img.shields.io/badge/DDS-Fast--DDS-orange.svg)](https://fast-dds.docs.eprosima.com/)
[![Python](https://img.shields.io/badge/Python-3.10+-blue.svg)](https://www.python.org/)
[![C++](https://img.shields.io/badge/C++-17-00599C.svg)](https://isocpp.org/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

*RoboCup HSL 2026 人形机器人足球系统 · 模块化 ROS2 接口定义*

**[设计文档](./design.md)** · **[消息定义](./msg/)** · **[动作定义](./action/)**

</div>

---

## 概述

本包定义了 RoboCup HSL 2026 人形机器人足球系统的全部 ROS2 接口，包括自定义消息（msg）和动作（action）。系统分为四个核心模块，通过标准化接口通信：

| 模块               | 职责                            |
| :----------------- | :------------------------------ |
| 决策 Decision      | 状态机管理、策略规划、行为分配  |
| 感知 Perception    | 球检测、机器人检测、场地定位    |
| 运控 Motion        | 行走、踢球、起身、头部控制      |
| 通信 Communication | GameController 接收、队伍间通信 |

完整接口规范见 **[design.md](./design.md)**。

---

## 接口一览

### 消息类型 (msg/)

| 文件                       | 说明                                                 |
| :------------------------- | :--------------------------------------------------- |
| `RobotControlState.msg`  | 机器人比赛状态（INITIAL/READY/SET/PLAYING/FINISHED） |
| `Strategy.msg`           | 策略信息（角色、动作、进攻侧）                       |
| `TeamData.msg`           | 队伍通信数据包                                       |
| `KickGoal.msg`           | 踢球命令（脚、力度、方向）                           |
| `HeadMode.msg`           | 头部控制模式                                         |
| `JointCommand.msg`       | 关节控制命令                                         |
| `RobotRelative.msg`      | 检测到的单个机器人（相对位置）                       |
| `RobotRelativeArray.msg` | 机器人检测数组                                       |
| `FieldFeature.msg`       | 场地特征（线、球门柱等）                             |
| `FieldFeatureArray.msg`  | 场地特征数组                                         |
| `Animation.msg`          | 动画播放状态                                         |
| `WalkEngineDebug.msg`    | 行走引擎调试信息                                     |
| `KickDebug.msg`          | 踢球调试信息                                         |
| `DynupEngineDebug.msg`   | 起身调试信息                                         |

### 动作类型 (action/)

| 文件                     | 说明           |
| :----------------------- | :------------- |
| `PlayAnimation.action` | 播放预定义动画 |
| `DynamicKick.action`   | 动态踢球控制   |

---


## Changelog

| 版本   | 日期    | 说明                                   |
| :----- | :------ | :------------------------------------- |
| v0.1.0 | 2026-04 | 初始接口设计，覆盖四大模块全部话题定义 |

---

<div align="center">

湖南大学 Robot 工坊 · BigHeroX 超能麓团队

</div>
