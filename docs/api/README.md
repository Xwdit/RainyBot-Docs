---
description: 此页面记录了可供插件使用的各类RainyBot API
---

# 📦 RainyBot API

* **[Plugin](Plugin.md)** - RainyBot的插件类，代表一个实例，用于在插件中实现各类相关功能  
  
* **[RainyBotAPI](RainyBotAPI.md)** - RainyBot所有API的父类，所有可供插件使用的API都将直接或间接继承此类  
  
  * **[BotAPI](BotAPI.md)** - 协议后端API类，直接或间接继承此类的类通常包含各类与协议后端直接相关的功能  
  
    * **[Bot](Bot.md)** - RainyBot的Bot类，负责处理与当前使用的机器人后端账号相关的各类功能  
  
    * **[BotRequestResult](BotRequestResult.md)** - RainyBot的协议后端请求结果类，记录了向协议后端发送的某次请求/命令的结果数据  
  
  * **[CoreAPI](CoreAPI.md)** - 这是RainyBotAPI的核心类，此类及其子类通常负责各类与协议后端无关，但与RainyBot核心功能直接相关的内容  
  
    * **[Console](Console.md)** - RainyBot控制台类，包含了各类与控制台输出直接相关的功能  
  
    * **[GifImage](GifImage.md)** - RainyBot动态图像类，可用于构造并生成一个Gif图像及相关数据，并将其用于储存或发送  
  
    * **[HttpRequestResult](HttpRequestResult.md)** - RainyBot的Http请求结果类，可从其中快速获取某次Http请求的结果数据  
  
    * **[Utils](Utils.md)** - RainyBot的实用工具类，其中提供了各种类型的便捷功能  
  
  * **[EventAPI](EventAPI.md)** - RainyBot的事件API类，所有的事件相关API将直接或间接继承此类  
  
    * **[Event](Event.md)** - RainyBot的事件类，各种事件类型将直接或间接继承此类  
  
      * **[ActionEvent](ActionEvent.md)** - RainyBot动作事件类，与聊天动作有关的各类事件通常直接或间接继承此类  
  
        * **[NudgeEvent](NudgeEvent.md)** - RainyBot的戳一戳事件类，记录了聊天中的一个戳一戳事件的相关数据  
  
      * **[BotEvent](BotEvent.md)** - RainyBot的Bot自身事件类，协议后端机器人账号自身发生的各类事件通常直接或间接继承此类  
  
        * **[BotOfflineEvent](BotOfflineEvent.md)** - RainyBot的机器人账号离线事件类，其实例记录了一次机器人账号离线事件的相关数据  
  
        * **[BotOnlineEvent](BotOnlineEvent.md)** - RainyBot的机器人账号登录成功事件类，其实例记录了一次机器人账号登录成功事件的相关数据  
  
        * **[BotReloginEvent](BotReloginEvent.md)** - RainyBot的机器人账号主动重新登录事件类，其实例记录了一次机器人账号主动重新登录事件的相关数据  
  
      * **[FriendEvent](FriendEvent.md)** - RainyBot好友事件类，与好友相关的事件通常直接或间接继承此类  
  
        * **[FriendInputStatusChangeEvent](FriendInputStatusChangeEvent.md)** - RainyBot的好友输入状态变更事件类，记录了某次好友输入状态变更事件的相关数据  
  
        * **[FriendNickChangeEvent](FriendNickChangeEvent.md)** - RainyBot的好友昵称变更事件类，记录了某次好友昵称变更事件的相关数据  
  
        * **[FriendRecallEvent](FriendRecallEvent.md)** - RainyBot的好友消息撤回事件类，记录了某次好友消息撤回事件的相关数据  
  
      * **[GroupEvent](GroupEvent.md)** - RainyBot的群组事件类，与群组直接相关的各类事件通常直接或间接继承此类  
  
        * **[GroupAllowAnonyChatEvent](GroupAllowAnonyChatEvent.md)** - RainyBot的群组匿名聊天允许状态变更类，其实例记录了与一次群组匿名聊天允许状态变更事件相关的数据  
  
        * **[GroupAllowConfessTalkEvent](GroupAllowConfessTalkEvent.md)** - RainyBot的群组坦白说允许状态变更类，其实例记录了与一次群组坦白说允许状态变更事件相关的数据  
  
        * **[GroupAllowInviteEvent](GroupAllowInviteEvent.md)** - RainyBot的群组邀请入群允许状态变更类，其实例记录了与一次群组邀请入群允许状态变更事件相关的数据  
  
        * **[GroupAnnounceChangeEvent](GroupAnnounceChangeEvent.md)** - RainyBot的群组公告变更类，其实例记录了与一次群组公告变更事件相关的数据  
  
        * **[GroupBotEvent](GroupBotEvent.md)** - RainyBot的Bot自身群组事件类，与Bot自身相关的群组事件通常直接或间接继承此类  
  
          * **[BotJoinGroupEvent](BotJoinGroupEvent.md)** - RainyBot的Bot自身加入群组事件，记录了Bot加入某个群组的事件的相关数据  
  
          * **[BotLeaveGroupEvent](BotLeaveGroupEvent.md)** - RainyBot的Bot自身退出群组事件类，记录了Bot退出某个群组相关事件的数据  
  
          * **[BotMuteEvent](BotMuteEvent.md)** - RainyBot的Bot自身在群组中被禁言事件类，其实例记录了与一次Bot自身在群组中被禁言事件相关的数据  
  
          * **[BotPermChangeEvent](BotPermChangeEvent.md)** - RainyBot的Bot自身在群组中被更改权限事件类，其实例记录了与一次Bot自身在群组中被更改权限事件相关的数据  
  
          * **[BotUnmuteEvent](BotUnmuteEvent.md)** - RainyBot的Bot自身在群组中被解除禁言事件类，其实例记录了与一次Bot自身在群组中被解除禁言事件相关的数据  
  
        * **[GroupMemberEvent](GroupMemberEvent.md)** - RainyBot的群组成员事件类，与群成员相关的群组事件通常直接或间接继承此类  
  
          * **[MemberHonorChangeEvent](MemberHonorChangeEvent.md)** - RainyBot的群成员荣誉变更类，其实例记录了与一次群成员荣誉变更事件相关的数据  
  
          * **[MemberJoinEvent](MemberJoinEvent.md)** - RainyBot的新成员入群类，其实例记录了与一次新成员入群事件相关的数据  
  
          * **[MemberLeaveEvent](MemberLeaveEvent.md)** - RainyBot的群成员退群类，其实例记录了与一次群成员退群事件相关的数据  
  
          * **[MemberMuteEvent](MemberMuteEvent.md)** - RainyBot的群成员被禁言类，其实例记录了与一次群成员被禁言事件相关的数据  
  
          * **[MemberNameChangeEvent](MemberNameChangeEvent.md)** - RainyBot的群成员昵称变更类，其实例记录了与一次群成员昵称变更事件相关的数据  
  
          * **[MemberPermChangeEvent](MemberPermChangeEvent.md)** - RainyBot的群成员权限变更类，其实例记录了与一次群成员权限变更事件相关的数据  
  
          * **[MemberTitleChangeEvent](MemberTitleChangeEvent.md)** - RainyBot的群成员头衔变更类，其实例记录了与一次群成员头衔变更事件相关的数据  
  
          * **[MemberUnmuteEvent](MemberUnmuteEvent.md)** - RainyBot的群成员被解除禁言类，其实例记录了与一次群成员被解除禁言事件相关的数据  
  
        * **[GroupMuteAllEvent](GroupMuteAllEvent.md)** - RainyBot的群组全员禁言状态变更类，其实例记录了与一次群组全员禁言状态变更事件相关的数据  
  
        * **[GroupNameChangeEvent](GroupNameChangeEvent.md)** - RainyBot的群组名称变更类，其实例记录了与一次群组名称变更事件相关的数据  
  
        * **[GroupRecallEvent](GroupRecallEvent.md)** - RainyBot的群组消息撤回类，其实例记录了与一次群组消息撤回事件相关的数据  
  
      * **[MessageEvent](MessageEvent.md)** - RainyBot的消息事件类，与消息直接相关的各类事件通常直接或间接继承此类  
  
        * **[FriendMessageEvent](FriendMessageEvent.md)** - RainyBot的好友消息事件类，其实例记录了与一次好友消息事件相关的数据  
  
        * **[GroupMessageEvent](GroupMessageEvent.md)** - RainyBot的群组消息事件类，其实例记录了与一次群组消息事件相关的数据  
  
        * **[OtherClientMessageEvent](OtherClientMessageEvent.md)** - RainyBot的其它客户端消息事件类，其实例记录了与一次其它客户端消息事件相关的数据  
  
        * **[StrangerMessageEvent](StrangerMessageEvent.md)** - RainyBot的单向好友消息事件类，其实例记录了与一次单向好友消息事件相关的数据  
  
        * **[TempMessageEvent](TempMessageEvent.md)** - RainyBot的群临时消息事件类，其实例记录了与一次群临时消息事件相关的数据  
  
      * **[OtherClientEvent](OtherClientEvent.md)** - RainyBot的其它客户端事件类，与其它客户端直接相关的各类事件通常直接或间接继承此类  
  
        * **[OtherClientOfflineEvent](OtherClientOfflineEvent.md)** - RainyBot的其它客户端离线事件类，其实例记录了与一次其它客户端离线事件相关的数据  
  
        * **[OtherClientOnlineEvent](OtherClientOnlineEvent.md)** - RainyBot的其它客户端上线事件类，其实例记录了与一次其它客户端上线事件相关的数据  
  
      * **[RequestEvent](RequestEvent.md)** - RainyBot的请求事件类，与各类请求直接相关的各类事件通常直接或间接继承此类  
  
        * **[GroupInviteRequestEvent](GroupInviteRequestEvent.md)** - RainyBot的邀请入群请求事件类，其实例记录了与一次邀请入群请求事件相关的数据  
  
        * **[MemberJoinRequestEvent](MemberJoinRequestEvent.md)** - RainyBot的新成员入群请求事件类，其实例记录了与一次新成员入群请求事件相关的数据  
  
        * **[NewFriendRequestEvent](NewFriendRequestEvent.md)** - RainyBot的添加好友请求事件类，其实例记录了与一次添加好友请求事件相关的数据  
  
  * **[MessageAPI](MessageAPI.md)** - RainyBot的消息API类，所有的消息相关API将直接或间接继承此类  
  
    * **[CacheMessage](CacheMessage.md)** - RainyBot的缓存消息类，通常代表一个对应实例，用于储存从机器人后端缓存中读取的消息的相关信息  
  
    * **[Message](Message.md)** - RainyBot的消息类，不具备任何功能，仅作为所有消息类型的直接或间接父类  
  
      * **[AppMessage](AppMessage.md)** - RainyBot的App消息类，通常代表一个对应实例，此类消息常见于某些特殊App调用聊天软件进行分享的场景  
  
      * **[AtAllMessage](AtAllMessage.md)** - RainyBot的At全体成员消息类，通常代表一个对应实例，此类消息仅适用于群聊  
  
      * **[AtMessage](AtMessage.md)** - RainyBot的At消息类，通常代表一个对应实例，此类消息仅适用于群聊  
  
      * **[BotCodeMessage](BotCodeMessage.md)** - RainyBot的BotCode消息类，通常代表一个对应实例，可用于快捷发送一段包含多种类型的消息  
  
      * **[DiceMessage](DiceMessage.md)** - RainyBot的骰子消息类，其实例记录了与一个骰子消息相关的各类数据  
  
      * **[FaceMessage](FaceMessage.md)** - RainyBot的表情消息类，其实例记录了与一个表情消息相关的各类数据  
  
      * **[FileMessage](FileMessage.md)** - RainyBot的文件消息类，其实例记录了与一个文件消息相关的各类数据  
  
      * **[FlashImageMessage](FlashImageMessage.md)** - RainyBot的闪图消息类，其实例记录了与一个闪图消息相关的各类数据  
  
      * **[ForwardMessage](ForwardMessage.md)** - RainyBot的转发消息类，其实例记录了与一个转发消息相关的各类数据  
  
      * **[ImageMessage](ImageMessage.md)** - RainyBot的图像消息类，其实例记录了与一个图像消息相关的各类数据  
  
      * **[JsonMessage](JsonMessage.md)** - RainyBot的Json消息类，其实例记录了与一个Json消息相关的各类数据  
  
      * **[MarketFaceMessage](MarketFaceMessage.md)** - RainyBot的商城表情消息类，其实例记录了与一个商城表情消息相关的各类数据  
  
      * **[MusicShareMessage](MusicShareMessage.md)** - RainyBot的音乐分享消息类，其实例记录了与一个音乐分享消息相关的各类数据  
  
      * **[PokeMessage](PokeMessage.md)** - RainyBot的戳一戳消息类，其实例记录了与一个戳一戳消息相关的各类数据  
  
      * **[QuoteMessage](QuoteMessage.md)** - RainyBot的引用回复消息类，其实例记录了与一个引用回复消息相关的各类数据  
  
      * **[SourceMessage](SourceMessage.md)** - RainyBot的消息链源消息类，其实例记录了某个接收到的消息链的消息ID，发送时间等数据  
  
      * **[TextMessage](TextMessage.md)** - RainyBot的文本消息类，其实例记录了与一个文本消息相关的各类数据  
  
      * **[VoiceMessage](VoiceMessage.md)** - RainyBot的语音消息类，其实例记录了与一个语音消息相关的各类数据  
  
      * **[XmlMessage](XmlMessage.md)** - RainyBot的Xml消息类，其实例记录了与一个Xml消息相关的各类数据  
  
    * **[MessageChain](MessageChain.md)** - RainyBot的消息链类，通常代表一个对应实例，为多个不同类型的消息类实例依序拼接而成的单条消息  
  
    * **[ForwardMessageNode](ForwardMessageNode.md)** - 这是RainyBot的单条转发消息类，其实例储存了一系列合并转发消息中的单条消息的相关数据  
  
    * **[ForwardMessageNodeList](ForwardMessageNodeList.md)** - RainyBot的转发消息列表类，通常代表一个对应实例，储存了某条合并转发消息中的所有单条转发消息  
  
  * **[RoleAPI](RoleAPI.md)** - RainyBot的角色API类，所有的角色相关API将直接或间接继承此类  
  
    * **[GroupAPI](GroupAPI.md)** - RainyBot的群组API类，所有的群组相关API将直接或间接继承此类  
  
      * **[Group](Group.md)** - RainyBot的群组类，通常代表一个对应实例，实现了用于与群组进行交互的各类功能  
  
      * **[GroupAnnounce](GroupAnnounce.md)** - RainyBot的群公告类，其实例记录了一个将被用于发送的群公告的相关信息  
  
      * **[GroupAnnounceInfo](GroupAnnounceInfo.md)** - RainyBot的群公告信息类，其实例记录了一个已发送的群公告的相关信息  
  
      * **[GroupAnnounceInfoList](GroupAnnounceInfoList.md)** - RainyBot的群公告信息列表类，储存了从某个群组中获取的群公告的列表  
  
      * **[GroupConfig](GroupConfig.md)** - RainyBot的群组配置类，通常代表一个对应实例，储存了与群组各类配置有关的信息  
  
      * **[GroupList](GroupList.md)** - RainyBot的群组列表类，通常代表一个对应实例，储存了机器人所在的群组的列表  
  
      * **[GroupMember](GroupMember.md)** - RainyBot的群成员类，通常代表一个对应实例，实现了用于与群组成员进行交互的各类功能  
  
      * **[GroupMemberList](GroupMemberList.md)** - RainyBot的群成员列表类，通常代表一个对应实例，储存了某个群组中所有群成员的列表  
  
    * **[MemberAPI](MemberAPI.md)** - RainyBot的个体成员API类，所有的个体成员相关API将直接或间接继承此类  
  
      * **[Member](Member.md)** - RainyBot的个体成员类，通常代表一个对应实例，实现了用于与好友或单向好友(陌生人)进行交互的各类功能  
  
      * **[MemberList](MemberList.md)** - RainyBot的个体成员列表类，通常代表一个对应实例，储存了机器人所有个体成员(通常为好友)的列表  
  
      * **[MemberProfile](MemberProfile.md)** - RainyBot的个体成员资料类，通常代表一个对应实例，储存了某个个体成员的相关资料  
  
    * **[OtherClient](OtherClient.md)** - RainyBot的其它客户端类，通常代表一个对应实例，实现了用于与其他客户端进行交互的各类功能  
  

