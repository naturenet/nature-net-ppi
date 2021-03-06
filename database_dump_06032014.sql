USE [nature-net-test]
GO
/****** Object:  Table [dbo].[Action]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Action](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[type_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[object_type] [nvarchar](64) NOT NULL,
	[object_id] [int] NOT NULL,
	[technical_info] [nvarchar](max) NULL,
 CONSTRAINT [PK_Action] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Action_Type]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Action_Type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Action_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Activity]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](32) NOT NULL,
	[avatar] [nvarchar](64) NULL,
	[description] [nvarchar](max) NULL,
	[creation_date] [datetime] NOT NULL,
	[expire_date] [datetime] NULL,
	[location_id] [int] NOT NULL,
	[technical_info] [nvarchar](max) NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Collection]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[description] [nvarchar](max) NULL,
	[activity_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[technical_info] [nvarchar](max) NULL,
 CONSTRAINT [PK_Collection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Collection_Contribution_Mapping]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection_Contribution_Mapping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[contribution_id] [int] NOT NULL,
	[collection_id] [int] NOT NULL,
	[technical_info] [nvarchar](max) NULL,
 CONSTRAINT [PK_Collection_Contribution_Mapping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contribution]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contribution](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[note] [nvarchar](max) NULL,
	[media_url] [nvarchar](max) NULL,
	[tags] [nvarchar](max) NULL,
	[date] [datetime] NOT NULL,
	[location_id] [int] NOT NULL,
	[technical_info] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contribution] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[note] [nvarchar](max) NOT NULL,
	[date] [datetime] NOT NULL,
	[type_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[parent_id] [int] NOT NULL,
	[object_type] [nvarchar](64) NOT NULL,
	[object] [binary](1) NULL,
	[object_id] [int] NULL,
	[technical_info] [nvarchar](max) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback_Type]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback_Type](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[description] [nvarchar](max) NULL,
	[data_type] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Feedback_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Interaction_Log]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interaction_Log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[touch_id] [int] NOT NULL,
	[touch_x] [float] NOT NULL,
	[touch_y] [float] NOT NULL,
	[details] [nvarchar](max) NULL,
 CONSTRAINT [PK_Interaction_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Interaction_Type]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interaction_Type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Interaction_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Location]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[email] [nvarchar](64) NULL,
	[password] [nchar](128) NULL,
	[avatar] [nvarchar](64) NULL,
	[technical_info] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[Design_Ideas]    Script Date: 6/3/2014 11:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Design_Ideas]
AS
SELECT     dbo.Contribution.*, dbo.[User].name, dbo.[User].avatar
FROM         dbo.Activity INNER JOIN
                      dbo.Collection ON dbo.Activity.id = dbo.Collection.activity_id INNER JOIN
                      dbo.Collection_Contribution_Mapping ON dbo.Collection.id = dbo.Collection_Contribution_Mapping.collection_id INNER JOIN
					  dbo.Contribution ON dbo.Collection_Contribution_Mapping.contribution_id = dbo.Contribution.id INNER JOIN
                      dbo.[User] ON dbo.Collection.user_id = dbo.[User].id
WHERE     (dbo.Activity.name = 'Design Idea')


GO
SET IDENTITY_INSERT [dbo].[Action_Type] ON 

INSERT [dbo].[Action_Type] ([id], [name], [description]) VALUES (1, N'Add', NULL)
INSERT [dbo].[Action_Type] ([id], [name], [description]) VALUES (2, N'Modify', NULL)
INSERT [dbo].[Action_Type] ([id], [name], [description]) VALUES (3, N'Delete', NULL)
SET IDENTITY_INSERT [dbo].[Action_Type] OFF
SET IDENTITY_INSERT [dbo].[Activity] ON 

INSERT [dbo].[Activity] ([id], [name], [avatar], [description], [creation_date], [expire_date], [location_id], [technical_info]) VALUES (0, N'Free Observation', NULL, NULL, CAST(0x0000A25E00000000 AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Activity] ([id], [name], [avatar], [description], [creation_date], [expire_date], [location_id], [technical_info]) VALUES (1, N'Design Idea', NULL, NULL, CAST(0x0000A25E00000000 AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Activity] ([id], [name], [avatar], [description], [creation_date], [expire_date], [location_id], [technical_info]) VALUES (3, N'Tracks', NULL, N'Find evidence of as many different kinds of bird or animal as you can!', CAST(0x0000A25E00000000 AS DateTime), NULL, 0, N'9')
INSERT [dbo].[Activity] ([id], [name], [avatar], [description], [creation_date], [expire_date], [location_id], [technical_info]) VALUES (4, N'Native or Not?', NULL, N'Photograph an animal or plant that you know either is or isn’t indigenous to your region. If it’s not, try to tell us where it’s from!', CAST(0x0000A25E00000000 AS DateTime), NULL, 0, N'10')
INSERT [dbo].[Activity] ([id], [name], [avatar], [description], [creation_date], [expire_date], [location_id], [technical_info]) VALUES (5, N'Stump the Community', NULL, N'Find an animal or plant that the NatureNet userbase won’t be able to name!', CAST(0x0000A33E01117DBA AS DateTime), NULL, 0, N'8')
SET IDENTITY_INSERT [dbo].[Activity] OFF
SET IDENTITY_INSERT [dbo].[Collection] ON 

INSERT [dbo].[Collection] ([id], [name], [description], [activity_id], [user_id], [date], [technical_info]) VALUES (0, N'Default Collection', NULL, 0, 0, CAST(0x0000A24500CC9ED0 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Collection] OFF
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([id], [note], [date], [type_id], [user_id], [parent_id], [object_type], [object], [object_id], [technical_info]) VALUES (0, N'Default Parent', CAST(0x0000A25E00000000 AS DateTime), 0, 0, 0, N'Null', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[Feedback_Type] ON 

INSERT [dbo].[Feedback_Type] ([id], [name], [description], [data_type]) VALUES (0, N'Default', NULL, N'Null')
INSERT [dbo].[Feedback_Type] ([id], [name], [description], [data_type]) VALUES (1, N'Comment', NULL, N'String')
INSERT [dbo].[Feedback_Type] ([id], [name], [description], [data_type]) VALUES (2, N'Like', NULL, N'Boolean')
INSERT [dbo].[Feedback_Type] ([id], [name], [description], [data_type]) VALUES (3, N'Rate', NULL, N'Integer')
SET IDENTITY_INSERT [dbo].[Feedback_Type] OFF
SET IDENTITY_INSERT [dbo].[Interaction_Type] ON 

INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (1, N'Scroll primary listbox')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (2, N'Tab changed')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (3, N'Tap to open')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (4, N'Drag to open')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (5, N'Clicked on signup button')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (6, N'Clicked on submit activity idea button')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (7, N'Clicked on submit design idea button')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (8, N'Clicked on header left button')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (9, N'Clicked on header middle button')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (10, N'Clicked on header right button')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (11, N'Clicked on red spot')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (12, N'Clicked on like in design idea listbox')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (13, N'Clicked on like in the design idea window')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (14, N'User collection opened')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (15, N'Activity collection opened')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (16, N'Design idea opened')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (17, N'Contribution opened')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (18, N'Window moved')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (19, N'Window closed')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (20, N'Window rotated')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (21, N'Contribution manipulated')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (22, N'Expander clicked to open')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (23, N'Expander clicked to close')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (24, N'Collection scrolled')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (25, N'Comments scrolled')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (26, N'Clicked on reply comment')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (27, N'Clicked on submit comment (before authentication)')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (28, N'Clicked on submit design idea in its window')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (29, N'Avatar dropped for authentication')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (30, N'Authentication failed to submit comment or idea')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (31, N'Authentication passed to submit comment or idea')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (32, N'Signup next1 clicked')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (33, N'Signup next2 failed')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (34, N'Signup next2 passed')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (35, N'Signup back1')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (36, N'Signup back2')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (37, N'Signup submit failed')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (38, N'Signup submit passed')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (39, N'Cancel reply button clicked')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (40, N'Cancel authentication button clicked')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (41, N'Submit comment or idea failed')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (42, N'Submit comment or idea passed')
INSERT [dbo].[Interaction_Type] ([id], [type]) VALUES (43, N'Item dropped on workspace')
SET IDENTITY_INSERT [dbo].[Interaction_Type] OFF
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([id], [name], [description]) VALUES (0, N'Default', N'Default Location')
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (1, N'Hub of Activities', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (2, N'Golden Eagle', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (3, N'A Safe Haven', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (4, N'Beavers', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (5, N'Outdoor Classroom', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (6, N'Past to Present', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (7, N'Overlook', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (8, N'Bird Hollow', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (9, N'Where Rivers Come Together', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (10, N'Birds of Prey', NULL)
INSERT [dbo].[Location] ([id], [name], [description]) VALUES (11, N'Journeys End', NULL)
SET IDENTITY_INSERT [dbo].[Location] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [name], [email], [password], [avatar], [technical_info]) VALUES (0, N'Default User', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Action]  WITH CHECK ADD  CONSTRAINT [FK_Action_Action_Type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Action_Type] ([id])
GO
ALTER TABLE [dbo].[Action] CHECK CONSTRAINT [FK_Action_Action_Type]
GO
ALTER TABLE [dbo].[Action]  WITH CHECK ADD  CONSTRAINT [FK_Action_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Action] CHECK CONSTRAINT [FK_Action_User]
GO
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Location] FOREIGN KEY([location_id])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_Location]
GO
ALTER TABLE [dbo].[Collection]  WITH CHECK ADD  CONSTRAINT [FK_Collection_Activity] FOREIGN KEY([activity_id])
REFERENCES [dbo].[Activity] ([id])
GO
ALTER TABLE [dbo].[Collection] CHECK CONSTRAINT [FK_Collection_Activity]
GO
ALTER TABLE [dbo].[Collection]  WITH CHECK ADD  CONSTRAINT [FK_Collection_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Collection] CHECK CONSTRAINT [FK_Collection_User]
GO
ALTER TABLE [dbo].[Collection_Contribution_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_CCMapping_Collection] FOREIGN KEY([collection_id])
REFERENCES [dbo].[Collection] ([id])
GO
ALTER TABLE [dbo].[Collection_Contribution_Mapping] CHECK CONSTRAINT [FK_CCMapping_Collection]
GO
ALTER TABLE [dbo].[Collection_Contribution_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_CCMapping_Contribution] FOREIGN KEY([contribution_id])
REFERENCES [dbo].[Contribution] ([id])
GO
ALTER TABLE [dbo].[Collection_Contribution_Mapping] CHECK CONSTRAINT [FK_CCMapping_Contribution]
GO
ALTER TABLE [dbo].[Contribution]  WITH CHECK ADD  CONSTRAINT [FK_Contribution_Location] FOREIGN KEY([location_id])
REFERENCES [dbo].[Location] ([id])
GO
ALTER TABLE [dbo].[Contribution] CHECK CONSTRAINT [FK_Contribution_Location]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Feedback] FOREIGN KEY([parent_id])
REFERENCES [dbo].[Feedback] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Feedback]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Feedback_Type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Feedback_Type] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Feedback_Type]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User]
GO
ALTER TABLE [dbo].[Interaction_Log]  WITH CHECK ADD  CONSTRAINT [FK_Interaction_Log_Interaction_Type] FOREIGN KEY([type])
REFERENCES [dbo].[Interaction_Type] ([id])
GO
ALTER TABLE [dbo].[Interaction_Log] CHECK CONSTRAINT [FK_Interaction_Log_Interaction_Type]
GO
