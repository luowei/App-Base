# App-Base

## 项目简介
一个iOS应用基础框架项目，基于MVC设计模式，展示了iOS应用开发中的核心架构设计和最佳实践。该项目实现了一个完整的应用程序骨架，包含工厂模式、控制器管理、数据模型等核心组件。

## 技术栈
- **开发语言**: Objective-C
- **平台**: iOS (iPhone)
- **开发工具**: Xcode
- **设计模式**: MVC (Model-View-Controller)、工厂模式 (Factory Pattern)
- **UI框架**: UIKit、Storyboard

## 功能特性
- 基于工厂模式的应用架构设计
- 完整的MVC分层结构
- 导航控制器管理
- 数据模型层封装 (Entry、EntriesController)
- 应用生命周期管理
- 内容视图控制器
- Storyboard界面设计

## 项目结构说明
```
App-Base/
├── App-Base/                    # 主项目目录
│   ├── AppDelegate.h/m         # 应用程序委托，管理应用生命周期
│   ├── AppController.h/m       # 应用控制器，负责启动流程
│   ├── AppFactory.h/m          # 工厂类，管理对象创建和依赖注入
│   ├── ViewController.h/m      # 主视图控制器
│   ├── Model/                  # 数据模型层
│   │   ├── Entry.h/m          # 条目数据模型
│   │   └── EntriesController.h/m  # 条目控制器
│   ├── content/                # 内容相关
│   │   └── ContentViewController.h/m
│   ├── Main.storyboard         # 主界面Storyboard
│   ├── LaunchScreen.xib        # 启动屏幕
│   ├── AppContextData.plist    # 应用上下文数据配置
│   └── Info.plist              # 应用配置信息
├── App-Base.xcodeproj/         # Xcode项目文件
└── App-BaseTests/              # 单元测试

```

## 核心组件说明

### 1. AppFactory (应用工厂)
- 负责创建和管理应用中的核心对象
- 管理导航控制器 (NavigationController)
- 提供统一的对象创建入口
- 实现依赖注入

### 2. AppController (应用控制器)
- 持有AppFactory引用
- 负责应用的启动流程
- 管理窗口 (UIWindow) 的初始化

### 3. Model层
- **Entry**: 数据条目模型
- **EntriesController**: 条目数据控制器，管理Entry集合

### 4. ContentViewController
- 内容展示视图控制器
- 展示具体的业务内容

## 设计模式应用

### 工厂模式 (Factory Pattern)
通过AppFactory统一管理对象的创建，降低模块间的耦合度：
```objective-c
@property(readonly) EntriesController *entriesController;
@property(readonly) UINavigationController *entriesNavigationtionController;
@property(readonly) UINavigationController *settingNavigationtionController;
```

### 依赖注入
AppController与AppFactory通过弱引用相互持有，避免循环引用：
```objective-c
// AppFactory中
@property(weak) AppController *appController;

// AppController中
@property(nonatomic, strong) AppFactory *factory;
```

## 依赖要求
- **Xcode**: 6.0 及以上版本
- **iOS**: 8.0 及以上系统
- **开发语言**: Objective-C

## 安装和运行方法

1. 克隆或下载项目到本地
```bash
git clone <repository-url>
```

2. 使用Xcode打开项目
```bash
cd App-Base
open App-Base.xcodeproj
```

3. 选择目标设备或模拟器

4. 点击运行按钮 (⌘+R) 或菜单 Product → Run

## 学习要点
- iOS应用的标准架构设计
- MVC模式的实践应用
- 工厂模式在iOS开发中的应用
- 依赖注入和对象管理
- 导航控制器的使用
- Storyboard界面开发

## 适用场景
本项目适合作为：
- iOS应用开发的起始模板
- MVC架构学习的参考示例
- 设计模式实践的案例研究
- iOS应用架构设计的教学示例

## 作者
luowei

## 许可证
请查看项目许可证文件
