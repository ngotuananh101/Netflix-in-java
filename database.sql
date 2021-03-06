USE [Netflix]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/21/2021 9:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 7/21/2021 9:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [PK_Favorite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiveTV]    Script Date: 7/21/2021 9:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiveTV](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[description] [nvarchar](250) NULL,
	[image] [nvarchar](150) NULL,
	[link] [nvarchar](150) NULL,
 CONSTRAINT [PK_LiveTV] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_genre]    Script Date: 7/21/2021 9:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_genre](
	[id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
 CONSTRAINT [PK_movie_genre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 7/21/2021 9:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tmdb_id] [nvarchar](50) NULL,
	[title] [nvarchar](250) NULL,
	[overview] [nvarchar](max) NULL,
	[poster] [nvarchar](250) NULL,
	[backdrop] [nvarchar](250) NULL,
	[vote_average] [float] NULL,
	[vote_count] [int] NULL,
	[views] [int] NULL,
	[runtime] [int] NULL,
	[release_date] [datetime] NULL,
	[create_at] [datetime] NULL,
	[video_link] [nvarchar](max) NULL,
	[quality] [nchar](10) NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/21/2021 9:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[avatar] [nvarchar](255) NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visitor_count]    Script Date: 7/21/2021 9:39:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visitor_count](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[visitor] [int] NOT NULL,
 CONSTRAINT [PK_visitor_count] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (12, N'Adventure', N'Adventure')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (14, N'Fantasy', N'Fantasy')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (16, N'Animation', N'Animation')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (18, N'Drama', N'Drama')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (27, N'Horror', N'Horror')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (28, N'Action', N'Action')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (35, N'Comedy', N'Comedy')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (36, N'History', N'History')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (37, N'Western', N'Western')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (53, N'Thriller', N'Thriller')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (80, N'Crime', N'Crime')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (99, N'Documentary', N'Documentary')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (878, N'Science Fiction', N'Science Fiction')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (9648, N'Mystery', N'Mystery')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (10402, N'Music', N'Music')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (10749, N'Romance', N'Romance')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (10751, N'Family', N'Family')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (10752, N'War', N'War')
INSERT [dbo].[Category] ([id], [name], [description]) VALUES (10770, N'TV Movie', N'TV Movie')
GO
SET IDENTITY_INSERT [dbo].[LiveTV] ON 

INSERT [dbo].[LiveTV] ([id], [title], [description], [image], [link]) VALUES (0, N'Australia Channel', N'Australian News Channel is an Australian privately held subsidiary of News Corp Australia which owns media properties operating in Australia and New Zealand.', N'https://tbivision.com/files/2014/10/Australia-channel.jpg', N'https://austchannel-live.akamaized.net/hls/live/2002729/austchannel-news/master.m3u8')
INSERT [dbo].[LiveTV] ([id], [title], [description], [image], [link]) VALUES (1, N'sfsafa', N'sdfsdfs', N'https://i.imgur.com/bXvnKGN.png', N'http://1223')
SET IDENTITY_INSERT [dbo].[LiveTV] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([id], [tmdb_id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category_id]) VALUES (1, N'550', N'Fight Club', N'A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground "fight clubs" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.', N'http://image.tmdb.org/t/p/w500/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg', N'http://image.tmdb.org/t/p/w500/rr7E0NoGKxvbkb89eR1GwfoYjpA.jpg', 8.3999996185302734, 21958, 139, 139, CAST(N'1999-10-15T00:00:00.000' AS DateTime), CAST(N'2021-07-08T04:16:17.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Movies] ([id], [tmdb_id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category_id]) VALUES (2, N'588228', N'The Tomorrow War', N'The world is stunned when a group of time travelers arrive from the year 2051 to deliver an urgent message: Thirty years in the future, mankind is losing a global war against a deadly alien species. The only hope for survival is for soldiers and civilians from the present to be transported to the future and join the fight. Among those recruited is high school teacher and family man Dan Forester. Determined to save the world for his young daughter, Dan teams up with a brilliant scientist and his estranged father in a desperate quest to rewrite the fate of the planet.', N'http://image.tmdb.org/t/p/w500/xipF6XqfSYV8DxLqfLN6aWlwuRp.jpg', N'http://image.tmdb.org/t/p/w500/yizL4cEKsVvl17Wc1mGEIrQtM2F.jpg', 8.3999996185302734, 1884, 138, 138, CAST(N'2021-07-02T00:00:00.000' AS DateTime), CAST(N'2021-07-11T03:42:52.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Movies] ([id], [tmdb_id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category_id]) VALUES (3, N'508943', N'Luca', N'Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-held secret: they are sea monsters from another world just below the waterâ€™s surface.', N'http://image.tmdb.org/t/p/w500/jTswp6KyDYKtvC52GbHagrZbGvD.jpg', N'http://image.tmdb.org/t/p/w500/620hnMVLu6RSZW6a5rwO8gqpt0t.jpg', 8.1000003814697266, 2452, 95, 95, CAST(N'2021-06-17T00:00:00.000' AS DateTime), CAST(N'2021-07-11T13:43:06.000' AS DateTime), N'', N'Luca      ', 16)
INSERT [dbo].[Movies] ([id], [tmdb_id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category_id]) VALUES (4, N'459151', N'The Boss Baby: Family Business', N'The Templeton brothers â€” Tim and his Boss Baby little bro Ted â€” have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again â€¦ and inspire a new family business.', N'http://image.tmdb.org/t/p/w500/5dExO5G2iaaTxYnLIFKLWofDzyI.jpg', N'http://image.tmdb.org/t/p/w500/gX5UrH1TLVVBwI7WxplW43BD6Z1.jpg', 8, 483, 107, 107, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2021-07-13T07:37:52.000' AS DateTime), NULL, NULL, 16)
INSERT [dbo].[Movies] ([id], [tmdb_id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category_id]) VALUES (5, N'581726', N'Infinite', N'Evan McCauley has skills he never learned and memories of places he has never visited. Self-medicated and on the brink of a mental breakdown, a secret group that call themselves â€œInfinitesâ€� come to his rescue, revealing that his memories are real.', N'http://image.tmdb.org/t/p/w500/niw2AKHz6XmwiRMLWaoyAOAti0G.jpg', N'http://image.tmdb.org/t/p/w500/wjQXZTlFM3PVEUmKf1sUajjygqT.jpg', 7.3000001907348633, 476, 106, 106, CAST(N'2021-06-10T00:00:00.000' AS DateTime), CAST(N'2021-07-13T07:38:05.000' AS DateTime), NULL, NULL, 878)
INSERT [dbo].[Movies] ([id], [tmdb_id], [title], [overview], [poster], [backdrop], [vote_average], [vote_count], [views], [runtime], [release_date], [create_at], [video_link], [quality], [category_id]) VALUES (6, N'385128', N'F9', N'Dominic Toretto and his crew battle the most skilled assassin and high-performance driver they''ve ever encountered: his forsaken brother.', N'http://image.tmdb.org/t/p/w500/bOFaAXmWWXC3Rbv4u4uM9ZSzRXP.jpg', N'http://image.tmdb.org/t/p/w500/xXHZeb1yhJvnSHPzZDqee0zfMb6.jpg', 7.5999999046325684, 511, 145, 145, CAST(N'2021-05-19T00:00:00.000' AS DateTime), CAST(N'2021-07-13T13:29:12.000' AS DateTime), N'https://s3-hcm-r1.longvan.net/netflix/default.mp4', N'          ', 28)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [role], [name], [email], [username], [password], [avatar]) VALUES (8, N'admin', N'Ngo Tuan Anhh', N'ngotuananh2101@gmail.com', N'ngotuananh2101', N'$2a$12$Wipm8/bo0Qz9VvqlRQl6fegnligmfy6iG5uF5McHV4T1QbEox7Wqu', N'https://i.imgur.com/zXbhmFD.png')
INSERT [dbo].[Users] ([id], [role], [name], [email], [username], [password], [avatar]) VALUES (9, N'user', N'Test Account 1', N'test1@gmail.com', N'test1', N'$2a$12$1P7ucMdndXfzXBgv18RcU.C1aca2L71TmsVuybQCya12yLpUrmUZa', N'https://i.imgur.com/zXbhmFD.png')
INSERT [dbo].[Users] ([id], [role], [name], [email], [username], [password], [avatar]) VALUES (10, N'user', N'Test Account 2', N'test2@gmail.com', N'test2', N'$2a$12$14ZBdtzqxFTxMNc5DTrINOR/fEhxM1vRuBtMN6GO1Qc2At9YprYwe', N'https://i.imgur.com/zXbhmFD.png')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[visitor_count] ON 

INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (3, CAST(N'2021-06-15' AS Date), 3)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (1002, CAST(N'2021-06-18' AS Date), 21)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2002, CAST(N'2021-06-19' AS Date), 135)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2003, CAST(N'2021-06-20' AS Date), 4)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2004, CAST(N'2021-06-29' AS Date), 6)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2005, CAST(N'2021-07-01' AS Date), 4)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2006, CAST(N'2021-07-07' AS Date), 16)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2007, CAST(N'2021-07-08' AS Date), 8)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2008, CAST(N'2021-07-09' AS Date), 4)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2009, CAST(N'2021-07-10' AS Date), 5)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2010, CAST(N'2021-07-11' AS Date), 17)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2011, CAST(N'2021-07-13' AS Date), 20)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2012, CAST(N'2021-07-14' AS Date), 15)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2013, CAST(N'2021-07-15' AS Date), 2)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2014, CAST(N'2021-07-16' AS Date), 4)
INSERT [dbo].[visitor_count] ([id], [date], [visitor]) VALUES (2015, CAST(N'2021-07-20' AS Date), 18)
SET IDENTITY_INSERT [dbo].[visitor_count] OFF
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Movies] FOREIGN KEY([movie_id])
REFERENCES [dbo].[Movies] ([id])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Movies]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Users]
GO
ALTER TABLE [dbo].[movie_genre]  WITH CHECK ADD  CONSTRAINT [FK_movie_genre_Genres] FOREIGN KEY([genre_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[movie_genre] CHECK CONSTRAINT [FK_movie_genre_Genres]
GO
ALTER TABLE [dbo].[movie_genre]  WITH CHECK ADD  CONSTRAINT [FK_movie_genre_Movies] FOREIGN KEY([movie_id])
REFERENCES [dbo].[Movies] ([id])
GO
ALTER TABLE [dbo].[movie_genre] CHECK CONSTRAINT [FK_movie_genre_Movies]
GO
