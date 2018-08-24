/*
 Navicat Premium Data Transfer

 Source Server         : 腾讯云服务器
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : 118.25.174.180:3306
 Source Schema         : cAuth

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 24/08/2018 13:33:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publisher` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `summary` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `tags` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (28, '9787115470669', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', 'CSS世界', 'https://img1.doubanio.com/view/subject/m/public/s29651678.jpg', 'https://book.douban.com/subject/27615777/', '人民邮电出版社', '本书从前端开发人员的需求出发，以“流”为线索，从结构、内容到美化装饰等方面，全面且深入地讲解前端开发人员必须了解和掌握的大量的CSS知识点。同时，作者结合多年的从业经验，通过大量的实战案例，详尽解析CSS的相关知识与常见问题。作者还为本书开发了专门的配套网站，进行实例展示、问题答疑。\n作为一本CSS深度学习的书，书中介绍大量许多前端开发人员都不知道的CSS知识点。通过阅读本书，读者会对CSS世界的深度和广度有一个全新的认识。', 'CNY 69.00', 7.9, 'CSS 80,前端 63,前端开发 19,编程 12,css 9,Web前端开发 8,计算机 7,技术 5', '张鑫旭', 0);
INSERT INTO `books` VALUES (29, '9787115424310', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '浪潮之巅（第三版）（上下册）', 'https://img1.doubanio.com/view/subject/m/public/s28718398.jpg', 'https://book.douban.com/subject/26792439/', '人民邮电出版社', '一个企业的发展与崛起，绝非只是空有领导强人即可达成。任何的决策、同期的商业环境，都在都影响着企业的兴衰。《浪潮之巅》不只是一本历史书，除了讲述科技顶尖企业的发展规律，对于华尔街如何左右科技公司，以及金融风暴对科技产业的冲击，也多有着墨。此外，这本书也着力讲述很多尚在普及 或将要发生的，比如微博和云计算，以及对下一代互联网科技产业浪潮的判断和预测。因为在极度商业化的今天，科技的进步和商机是分不开的。\n\n诚如作者所言：“人的商业知识和眼光不是天生的，需要不断地、有心地学习。经过多年的学习、思考和实践，我认定这样一个规律，就是：科技的发展不是均匀的，而是以浪潮的形式出现。每一个人都应该看清楚浪潮，赶上浪潮，如此，便不枉此生。”', '99.00元', 9.3, '互联网 313,IT史 226,商业 205,吴军 185,计算机 170,硅谷 110,历史 96,管理 71', '吴军', 1);
INSERT INTO `books` VALUES (30, '9787535732309', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '时间简史', 'https://img3.doubanio.com/view/subject/m/public/s1914861.jpg', 'https://book.douban.com/subject/1034282/', '湖南科学技术出版社', '《时间简史》讲述是探索时间和空间核心秘密的故事，是关于宇宙本性的最前沿知识，包括我们的宇宙图像、空间和时间、膨胀的宇宙不确定性原理、基本粒子和自然的力、黑洞、黑洞不是这么黑、时间箭头等内容。第一版中的许多理论预言，后来在对微观或宏观宇宙世界观测中得到证实。\n自1988年首版以来，《时间简史》已成为全球科学著作的里程碑。它被翻译成40种文字，销售了近1000万册。此版更新了内容，把许多观测揭示的新知识，以及霍金最新的研究纳入，并配以250幅照片和电脑制作的三维和四维空间图。', '45.00元', 8.8, '科普 8134,史蒂芬·霍金 7329,时间简史 5240,宇宙 4831,物理 4556,科学 3674,时间 2429,物理学 2262', '[英] 史蒂芬·霍金', 0);
INSERT INTO `books` VALUES (31, '9787536693968', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '三体Ⅱ', 'https://img3.doubanio.com/view/subject/m/public/s3078482.jpg', 'https://book.douban.com/subject/3066477/', '重庆出版社', '三体人在利用魔法般的科技锁死了地球人的科学之后，庞大的宇宙舰队杀气腾腾地直扑太阳系，意欲清除地球文明。\n面对前所未有的危局，经历过无数磨难的地球人组建起同样庞大的太空舰队，同时，利用三体人思维透明的致命缺陷，制订了神秘莫测的“面壁计划”，精选出四位“面壁者”。秘密展开对三体人的反击。\n三体人自身虽然无法识破人类的诡谲计谋，却依靠由地球人中的背叛者挑选出的“破壁人”，与“面壁者”展开智慧博弈……\n“面壁计划”究竟能否成功？地球人究竟能否在这场你死我活的文明生存竞争中战而胜之？神秘的\n“黑暗森林”究竟意味着什么？', '32.00', 9.3, '科幻 23620,刘慈欣 20256,三体 12198,小说 8133,科幻小说 7673,中国 6943,黑暗森林 6031,中国科幻 4975', '刘慈欣', 2);
INSERT INTO `books` VALUES (32, '9787115373557', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '数学之美 （第二版）', 'https://img1.doubanio.com/view/subject/m/public/s27653128.jpg', 'https://book.douban.com/subject/26163454/', '人民邮电出版社', '几年前，“数学之美”系列文章原刊载于谷歌黑板报，获得上百万次点击，得到读者高度评价。读者说，读了“数学之美”，才发现大学时学的数学知识，比如马尔可夫链、矩阵计算，甚至余弦函数原来都如此亲切，并且栩栩如生，才发现自然语言和信息处理这么有趣。\n在纸本书的创作中，作者吴军博士几乎把所有文章都重写了一遍，为的是把高深的数学原理讲得更加通俗易懂，让非专业读者也能领略数学的魅力。读者通过具体的例子学到的是思考问题的方式 —— 如何化繁为简，如何用数学去解决工程问题，如何跳出固有思维不断去思考创新。\n第二版增加了针对大数据和机器学习的内容，以便满足人们对当下技术的学习需求；同时，根据专家和读者的反馈更正了一些错漏，并更新了部分内容。\n《数学之美》第一版荣获国家图书馆第八届文津图书奖；\n入选广电总局“2014年向全国青少年推荐百种优秀图书书目”；\n荣获2012-2013年度全行业优秀畅销书；\n《浪潮之巅》、《文明之光》作者吴军博士最新力作，李开复作序推荐，Google黑板报百万点击！\n新版增加了大数据和机器学习等最新内容，以满足人们对当下技术的学习需求；同时，根据专家和读者的反馈更正了错漏，并更新了部分内容', '49.00元', 8.9, '数学 1599,计算机 754,科普 682,吴军 579,计算机科学 508,互联网 435,机器学习 395,自然语言 360', '吴军', 2);
INSERT INTO `books` VALUES (33, '9787115461476', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '深度学习', 'https://img1.doubanio.com/view/subject/m/public/s29518349.jpg', 'https://book.douban.com/subject/27087503/', '人民邮电出版社', '《深度学习》由全球知名的三位专家Ian Goodfellow、Yoshua Bengio 和Aaron Courville撰写，是深度学习领域奠基性的经典教材。全书的内容包括3个部分：第1部分介绍基本的数学工具和机器学习的概念，它们是深度学习的预备知识；第2部分系统深入地讲解现今已成熟的深度学习方法和技术；第3部分讨论某些具有前瞻性的方向和想法，它们被公认为是深度学习未来的研究重点。\n《深度学习》适合各类读者阅读，包括相关专业的大学生或研究生，以及不具有机器学习或统计背景、但是想要快速补充深度学习知识，以便在实际产品或平台中应用的软件工程师。', '168', 8.4, '深度学习 770,人工智能 572,机器学习 438,计算机 229,计算机科学 204,算法 142,数学 122,时间管理 69', '[美] 伊恩·古德费洛,[加] 约书亚·本吉奥,[加] 亚伦·库维尔', 3);
INSERT INTO `books` VALUES (34, '9787302423287', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '机器学习', 'https://img1.doubanio.com/view/subject/m/public/s28735609.jpg', 'https://book.douban.com/subject/26708119/', '清华大学出版社', '机器学习是计算机科学与人工智能的重要分支领域. 本书作为该领域的入门教材，在内容上尽可能涵盖机器学习基础知识的各方面。 为了使尽可能多的读者通过本书对机器学习有所了解, 作者试图尽可能少地使用数学知识. 然而, 少量的概率、统计、代数、优化、逻辑知识似乎不可避免. 因此, 本书更适合大学三年级以上的理工科本科生和研究生, 以及具有类似背景的对机器学 习感兴趣的人士. 为方便读者, 本书附录给出了一些相关数学基础知识简介.\n全书共16 章，大致分为3 个部分：第1 部分（第1～3 章）介绍机器学习的基础知识；第2 部分（第4～10 章）讨论一些经典而常用的机器学习方法（决策树、神经网络、支持向量机、贝叶斯分类器、集成学习、聚类、降维与度量学习）；第3 部分（第11～16 章）为进阶知识，内容涉及特征选择与稀疏学习、计算学习理论、半监督学习、概率图模型、规则学习以及强化学习等.前3章之外的后续各章均相对独立, 读者可根据自己的兴趣和时间情况选择使用. 根据课时情况, 一个学期的本科生课程可考虑讲授前9章或前10章; 研究生课程则不妨使用全书.\n书中除第1章外, 每章都给出了十道习题. 有的习题是帮助读者巩固本章学习, 有的是为了引导读者扩展相关知识. 一学期的一般课程可使用这些习题, 再辅以两到三个针对具体数据集的大作业. 带星号的习题则有相当难度, 有些并无现成答案, 谨供富有进取心的读者启发思考.\n本书可作为高等院校计算机、自动化及相关专业的本科生或研究生教材，也可供对机器学习感兴趣的研究人员和工程技术人员阅读参考。', '88.00元', 8.8, '机器学习 2318,人工智能 1055,数据挖掘 579,计算机 493,数据分析 452,MachineLearning 423,计算机科学 367,AI 310', '周志华', 2);
INSERT INTO `books` VALUES (35, '9787115351531', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '图解HTTP', 'https://img3.doubanio.com/view/subject/m/public/s27283822.jpg', 'https://book.douban.com/subject/25863515/', '人民邮电出版社', '本书对互联网基盘——HTTP协议进行了全面系统的介绍。作者由HTTP协议的发展历史娓娓道来，严谨细致地剖析了HTTP协议的结构，列举诸多常见通信场景及实战案例，最后延伸到Web安全、最新技术动向等方面。本书的特色为在讲解的同时，辅以大量生动形象的通信图例，更好地帮助读者深刻理解HTTP通信过程中客户端与服务器之间的交互情况。读者可通过本书快速了解并掌握HTTP协议的基础，前端工程师分析抓包数据，后端工程师实现REST API、实现自己的HTTP服务器等过程中所需的HTTP相关知识点本书均有介绍。\n本书适合Web开发工程师，以及对HTTP协议感兴趣的各层次读者。', '49.00元', 8.1, 'HTTP 1113,网络 528,计算机 469,协议 323,互联网 288,web 193,Web 189,网络编程 159', '【日】上野宣', 5);
INSERT INTO `books` VALUES (36, '9787229100605', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '三体', 'https://img3.doubanio.com/view/subject/m/public/s29407682.jpg', 'https://book.douban.com/subject/26427702/', '重庆出版社', '文化大革命”如火如荼进行的同时，军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但无人料到，地球文明向宇宙发出的**声啼鸣，有效改变了人类的命运。', 'CNY 26.00', 8.7, '科幻 190,刘慈欣 166,中国 105,科幻小说 95,小说 84,中国文学 43,虚构-小说-科幻 31,科幻也可以是这样的 27', '刘慈欣', 2);
INSERT INTO `books` VALUES (37, '9787530216781', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '平凡的世界：全三册', 'https://img3.doubanio.com/view/subject/m/public/s29668054.jpg', 'https://book.douban.com/subject/27186298/', '北京十月文艺出版社', '这是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，特别是主人公面对困境艰苦奋斗的精神，对今天的大学生朋友仍有启迪。这是一部全景式地表现中国当代城乡社会生活的长篇小说，本书共三部。作者在近十年问广阔背景上，通过复杂的矛盾纠葛，刻划了社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。', '108.00元', 9.6, '人生 81,成长 72,平凡 63,路遥 60,平凡的世界 56,生活 52,小说 49,中国 42', '路遥', 3);
INSERT INTO `books` VALUES (38, '9787540487669', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '你坏', 'https://img3.doubanio.com/view/subject/m/public/s29790753.jpg', 'https://book.douban.com/subject/30245565/', '湖南文艺出版社', '如果你和众人不一样。\n那就不一样。\n如果你和世界不一样。\n那就不一样吧。\n《你坏》——百万级畅销书作家大冰2018年作品。\n脱胎于2013年的《他们最幸福》，加料回炉后，不留遗憾的完整版！\n为了她真正的淬火重生，大冰对她进行了大量重写和复原。\n复原了最初的文字结构和文字尺度，复原了最初的分段、标点、篇章排版，复原了他的原意、本意、诚意、心意，也复原了初稿里的大段删减。\n最重要的是，终于找回并复原了她原本该是的那个名字——《你坏》。', '39.60元', 4.6, '大冰 218,普通人不普通的故事 100,冰叔 88,江湖 70,故事 68,江湖说书人 49,畅销书 46,真实 34', '大冰', 21);
INSERT INTO `books` VALUES (39, '9787111436737', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '利用Python进行数据分析', 'https://img3.doubanio.com/view/subject/m/public/s27275372.jpg', 'https://book.douban.com/subject/25779298/', '机械工业出版社', '【名人推荐】\n“科学计算和数据分析社区已经等待这本书很多年了：大量具体的实践建议，以及大量综合应用方法。本书在未来几年里肯定会成为Python领域中技术计算的权威指南。”\n——Fernando Pérez　加州大学伯克利分校 研究科学家， IPython的创始人之一\n【内容简介】\n还在苦苦寻觅用Python控制、处理、整理、分析结构化数据的完整课程？本书含有大量的实践案例，你将学会如何利用各种Python库（包括NumPy、pandas、matplotlib以及IPython等）高效地解决各式各样的数据分析问题。\n由于作者Wes McKinney是pandas库的主要作者，所以本书也可以作为利用Python实现数据密集型应用的科学计算实践指南。本书适合刚刚接触Python的分析人员以及刚刚接触科学计算的Python程序员。\n•将IPython这个交互式Shell作为你的首要开发环境。\n•学习NumPy（Numerical Python）的基础和高级知识。\n•从pandas库的数据分析工具开始。\n•利用高性能工具对数据进行加载、清理、转换、合并以及重塑。\n•利用matplotlib创建散点图以及静态或交互式的可视化结果。\n•利用pandas的groupby功能对数据集进行切片、切块和汇总操作。\n•处理各种各样的时间序列数据。\n•通过详细的案例学习如何解决Web分析、社会科学、金融学以及经•济学等领域的问题。', '89.00', 8.5, '数据分析 1307,python 959,Python 659,数据挖掘 385,编程 337,数据分析/挖掘 330,计算机 240,机器学习 196', 'Wes McKinney', 27);
INSERT INTO `books` VALUES (40, '9787115479679', 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '用 Python 写网络爬虫（第2版）', 'https://img1.doubanio.com/view/subject/m/public/s29820499.jpg', 'https://book.douban.com/subject/30275479/', '人民邮电出版社', '本书包括网络爬虫的定义以及如何爬取网站，如何使用几种库从网页中抽取数据，如何通过缓存结果避免重复下载的问题，如何通过并行下载来加速数据抓取，如何利用不同的方式从动态网站中抽取数据，如何使用叔叔及导航等表达进行搜索和登录，如何访问被验证码图像保护的数据，如何使用 Scrapy 爬虫框架进行快速的并行抓取，以及使用 Portia 的 Web 界面构建网路爬虫。', '49.00 元', 0, '計算機 1,爬虫 1,python 1,Linux 1', '[德] 凯瑟琳·雅姆尔（Katharine·Jarmul）,[澳] 理查德·劳森（Richard·Lawson)', 100);

-- ----------------------------
-- Table structure for cSessionInfo
-- ----------------------------
DROP TABLE IF EXISTS `cSessionInfo`;
CREATE TABLE `cSessionInfo`  (
  `open_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`open_id`) USING BTREE,
  INDEX `openid`(`open_id`) USING BTREE,
  INDEX `skey`(`skey`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '会话管理用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cSessionInfo
-- ----------------------------
INSERT INTO `cSessionInfo` VALUES ('oanxN5VOeWXkk1dcEGToYX6ttLZE', '4908ffd9-3f01-47e4-b7d6-7392abe2ccd1', 'afaf6a44460ccc6f3afb1b121f57b5ceaad8734c', '2018-08-19 13:14:07', '2018-08-23 19:31:42', 'Zo0iEzbf5AvUc1LxrgFZ2A==', '{\"openId\":\"oanxN5VOeWXkk1dcEGToYX6ttLZE\",\"nickName\":\"星辰大海\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Baoshan\",\"province\":\"Shanghai\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIp6hkjJREyMj3gYlDicsS02kYF1X6BheCbXB3eiaayTVwEb1FsLibSTcwjVQYkTXEictcwxAPicpZJHicQ/132\",\"watermark\":{\"timestamp\":1535023899,\"appid\":\"wx56f6f1c59845b222\"}}');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bookid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `location` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '40', '好书', 'iPhone 6', '广州市');
INSERT INTO `comments` VALUES (2, 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '39', '不错不错，可以学习一下', 'iPhone 6', '上海市');
INSERT INTO `comments` VALUES (3, 'oanxN5VOeWXkk1dcEGToYX6ttLZE', '38', '文艺青年必备啊', 'iPhone 6', '上海市');

SET FOREIGN_KEY_CHECKS = 1;
